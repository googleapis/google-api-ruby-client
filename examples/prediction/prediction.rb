#!/usr/bin/ruby1.8 
# -*- coding: utf-8 -*-

# Copyright:: Copyright 2011 Google Inc.
# License:: All Rights Reserved.
# Original Author:: Bob Aman, Winton Davies, Robert Kaplow
# Maintainer:: Robert Kaplow (mailto:rkaplow@google.com)

$LOAD_PATH:.unshift File.dirname('lib')
require 'rubygems'
require 'sinatra'
require 'datamapper'
require 'google/api_client'
require 'yaml'

use Rack::Session::Pool, :expire_after => 86400 # 1 day

# Set up our token store
DataMapper.setup(:default, 'sqlite::memory:')
class TokenPair
  include DataMapper::Resource

  property :id, Serial
  property :refresh_token, String
  property :access_token, String
  property :expires_in, Integer
  property :issued_at, Integer

  def update_token!(object)
    self.refresh_token = object.refresh_token
    self.access_token = object.access_token
    self.expires_in = object.expires_in
    self.issued_at = object.issued_at
  end

  def to_hash
    return {
      :refresh_token => refresh_token,
      :access_token => access_token,
      :expires_in => expires_in,
      :issued_at => Time.at(issued_at)
    }
  end
end
TokenPair.auto_migrate!

before do

  # FILL IN THIS SECTION
  # This will work if your yaml file is stored as ./google-api.yaml
  # ------------------------
  oauth_yaml = YAML.load_file('.google-api.yaml')
  @client = Google::APIClient.new
  @client.authorization.client_id = oauth_yaml["client_id"]
  @client.authorization.client_secret = oauth_yaml["client_secret"]
  @client.authorization.scope = oauth_yaml["scope"]
  @client.authorization.refresh_token = oauth_yaml["refresh_token"]
  @client.authorization.access_token = oauth_yaml["access_token"]
  # -----------------------

  @client.authorization.redirect_uri = to('/oauth2callback')

  # Workaround for now as expires_in may be nil, but when converted to int it becomes 0.
  @client.authorization.expires_in = 1800 if @client.authorization.expires_in.to_i == 0

  if session[:token_id]
    # Load the access token here if it's available
    token_pair = TokenPair.get(session[:token_id])
    @client.authorization.update_token!(token_pair.to_hash)
  end
  if @client.authorization.refresh_token && @client.authorization.expired?
    @client.authorization.fetch_access_token!
  end


  @prediction = @client.discovered_api('prediction', 'v1.3')
  unless @client.authorization.access_token || request.path_info =~ /^\/oauth2/
    redirect to('/oauth2authorize')
  end
end

get '/oauth2authorize' do
  redirect @client.authorization.authorization_uri.to_s, 303
end

get '/oauth2callback' do
  @client.authorization.fetch_access_token!
  # Persist the token here
  token_pair = if session[:token_id]
    TokenPair.get(session[:token_id])
  else
    TokenPair.new
  end
  token_pair.update_token!(@client.authorization)
  token_pair.save()
  session[:token_id] = token_pair.id
  redirect to('/')
end

get '/' do
  # FILL IN DATAFILE:
  # ----------------------------------------
  datafile = "BUCKET/OBJECT"
  # ----------------------------------------
  # Train a predictive model.
  train(datafile)
  # Check to make sure the training has completed.
  if (is_done?(datafile))
    # Do a prediction.
    # FILL IN DESIRED INPUT:
    # -------------------------------------------------------------------------------
    prediction,score = get_prediction(datafile, ["Alice noticed with some surprise."])
    # -------------------------------------------------------------------------------

    # We currently just dump the results to output, but you can display them on the page if desired.
    puts prediction
    puts score    
  end
end

##
# Trains a predictive model.
#
# @param [String] filename The name of the file in Google Storage. NOTE: this do *not*
#                 include the gs:// part. If the Google Storage path is gs://bucket/object,
#                 then the correct string is "bucket/object"
def train(datafile)
  input = "{\"id\" : \"#{datafile}\"}"
  puts "training input: #{input}"
  status, headers, body = @client.execute(@prediction.training.insert,
                                          {},
                                          input,
                                          {'Content-Type' => 'application/json'})
end

##
# Returns the current training status
#
# @param [String] filename The name of the file in Google Storage. NOTE: this do *not*
#                 include the gs:// part. If the Google Storage path is gs://bucket/object,
#                 then the correct string is "bucket/object"
# @return [Integer] status The HTTP status code of the training job.
def get_training_status(datafile)
  status, headers, body = @client.execute(@prediction.training.get,
                                          {'data' => datafile})
  return status
end


##
# Checks the training status until a model exists (will loop forever).
#
# @param [String] filename The name of the file in Google Storage. NOTE: this do *not*
#                 include the gs:// part. If the Google Storage path is gs://bucket/object,
#                 then the correct string is "bucket/object"
# @return [Bool] exists True if model exists and can be used for predictions.

def is_done?(datafile)
  status = get_training_status(datafile)
  while true do
    puts "Attempting to check model #{datafile} - Status: #{status} "
    return true if status == 200
    sleep 10
    status = get_training_status(datafile)
  end
  return false
end



##
# Returns the prediction and most most likely class score if categorization.
#
# @param [String] filename The name of the file in Google Storage. NOTE: this do *not*
#                 include the gs:// part. If the Google Storage path is gs://bucket/object,
#                 then the correct string is "bucket/object"
# @param [List] input_features A list of input features.
#
# @return [String or Double] prediction The returned prediction, String if categorization,
#                            Double if regression
# @return [Double] trueclass_score The numeric score of the most likely label. (Categorical only).

def get_prediction(datafile,input_features)
  # We take the input features and put it in the right input (json) format.
  input="{\"input\" : { \"csvInstance\" :  #{input_features}}}"
  puts "Prediction Input: #{input}"
  status, headers, body = @client.execute(@prediction.training.predict,
                                                     {'data' => datafile},
                                                     input,
                                                     {'Content-Type' => 'application/json'})
  prediction_data = JSON.parse(body[0])
  
  # Categorical
  if prediction_data["outputLabel"] != nil
    # Pull the most likely label.
    prediction = prediction_data["outputLabel"]
    # Pull the class probabilities.
    probs = prediction_data["outputMulti"]
    puts probs
    # Verify we are getting a value result.
    puts ["ERROR", input_features].join("\t")  if probs.nil?
    return "error", -1.0 if probs.nil?

    # Extract the score for the most likely class.
    trueclass_score = probs.select{|hash|
      hash["label"] ==  prediction
    }[0]["score"]

    # Regression.
  else
    prediction = prediction_data["outputValue"]
    # Class core unused.
    trueclass_score = -1
  end

  puts [prediction,trueclass_score,input_features].join("\t") 
  return prediction,trueclass_score
end

