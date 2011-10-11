#!/usr/bin/ruby1.8
# -*- coding: utf-8 -*-

# Copyright:: Copyright 2011 Google Inc.
# License:: Apache 2.0
# Original Author:: Bob Aman, Winton Davies, Robert Kaplow
# Maintainer:: Robert Kaplow (mailto:rkaplow@google.com)

require 'rubygems'
require 'sinatra'
require 'datamapper'
require 'google/api_client'
require 'yaml'

enable :sessions

# Set up our token store
DataMapper.setup(:default, 'sqlite::memory:')
class TokenPair
  include DataMapper::Resource

  property :id, Serial
  property :refresh_token, String, :length => 255
  property :access_token, String, :length => 255
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

def save_token_pair(session, client)
  token_pair = if session[:token_id]
    TokenPair.first_or_create(:id => session[:token_id])
  else
    TokenPair.new
  end
  token_pair.update_token!(client.authorization)
  if token_pair.save
    session[:token_id] = token_pair.id
  else
    token_pair.errors.each do |e|
      raise e
    end
  end
end

# FILL IN THIS SECTION
# This is the name of the {bucket}/{object} you are using for the language
# file.
# ------------------------
DATA_OBJECT = "bucket/object"
# ------------------------

before do
  # FILL IN THIS SECTION
  # This will work if your yaml file is stored as .google-api.yaml
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

  if session[:token_id]
    # Load the access token here if it's available
    token_pair = TokenPair.get(session[:token_id])
    @client.authorization.update_token!(token_pair.to_hash) if token_pair
  end
  if @client.authorization.refresh_token && @client.authorization.expired?
    @client.authorization.fetch_access_token!
    save_token_pair(session, @client)
  end

  @prediction = @client.discovered_api('prediction', 'v1.4')
  unless @client.authorization.access_token || request.path_info =~ /^\/oauth2/
    redirect to('/oauth2authorize')
  end
end

get '/oauth2authorize' do
  redirect @client.authorization.authorization_uri.to_s, 303
end

get '/oauth2callback' do
  @client.authorization.fetch_access_token!
  save_token_pair(session, @client)
  redirect to('/')
end

get '/' do
  erb :index
end

get '/train' do
  training = @prediction.trainedmodels.insert.request_schema.new
  training.id = 'language-sample'
  training.storage_data_location = DATA_OBJECT
  result = @client.execute(
    :api_method => @prediction.trainedmodels.insert,
    :headers => {'Content-Type' => 'application/json'},
    :body_object => training
  )

  return [
    200,
    [["Content-Type", "application/json"]],
    ::JSON.generate({"status": "success"})
  ]
end

get '/checkStatus' do
  result = @client.execute(
    :api_method => @prediction.trainedmodels.get,
    :parameters => {'id' => 'language-sample'}
  )

  return [
    200,
    [["Content-Type", "application/json"]],
    assemble_json_body(result)
  ]
end

post '/predict' do
  input = @prediction.trainedmodels.predict.request_schema.new
  input.input = {}
  input.input.csv_instance = [params["input"]]
  result = @client.execute(
    :api_method => @prediction.trainedmodels.predict,
    :parameters => {'id' => 'language-sample'},
    :headers => {'Content-Type' => 'application/json'},
    :body_object => input
  )

  return [
    200,
    [["Content-Type", "application/json"]],
    assemble_json_body(result)
  ]
end

def assemble_json_body(result)
  # Assemble some JSON our client-side code can work with.
  json = {}
  if result.status != 200
    if result.data["error"]
      message = result.data["error"]["errors"].first["message"]
      json["message"] = "#{message} [#{result.status}]"
    else
      json["message"] = "Error. [#{result.status}]"
    end
    json["response"] = ::JSON.parse(result.body)
    json["status"] = "error"
  else
    json["response"] = ::JSON.parse(result.body)
    json["status"] = "success"
  end
  return ::JSON.generate(json)
end
