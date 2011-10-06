$:.unshift('lib')
#####!/usr/bin/ruby1.8

# Copyright:: Copyright 2011 Google Inc.
# License:: All Rights Reserved.
# Original Author:: Bob Aman
# Maintainer:: Daniel Dobson (mailto:wolff@google.com)
# Maintainer:: Jenny Murphy (mailto:mimming@google.com)

require 'rubygems'
require 'sinatra'
require 'google/api_client'
require 'httpadapter/adapters/net_http'
require 'pp'

use Rack::Session::Pool, :expire_after => 86400 # 1 day

# Configuration
# See README for getting API id and secret

if (ARGV.size < 2)
  set :oauth_client_id, 'oauth_client_id'
  set :oauth_client_secret, 'oauth_client_secret'

  if (settings.oauth_client_id == 'oauth_client_id')
    puts 'See README for getting API id and secret.  Server terminated.'
    exit(0)
  end
else
  set :oauth_client_id, ARGV[0]
  set :oauth_client_secret, ARGV[1]
end

# Configuration that you probably don't have to change
set :oauth_scopes, 'https://www.googleapis.com/auth/buzz'

class TokenPair
  @refresh_token
  @access_token
  @expires_in
  @issued_at

  def update_token!(object)
    @refresh_token = object.refresh_token
    @access_token = object.access_token
    @expires_in = object.expires_in
    @issued_at = object.issued_at
  end

  def to_hash
    return {
      :refresh_token => @refresh_token,
      :access_token => @access_token,
      :expires_in => @expires_in,
      :issued_at => Time.at(@issued_at)
    }
  end
end

# At the beginning of any request, make sure the OAuth token is available.
# If it's not available, kick off the OAuth 2 flow to authorize.
before do
  @client = Google::APIClient.new(
    :authorization => :oauth_2,
    :host => 'www.googleapis.com',
    :http_adapter => HTTPAdapter::NetHTTPAdapter.new
  )

  @client.authorization.client_id = settings.oauth_client_id
  @client.authorization.client_secret = settings.oauth_client_secret
  @client.authorization.scope = settings.oauth_scopes
  @client.authorization.redirect_uri = to('/oauth2callback')
  @client.authorization.code = params[:code] if params[:code]
  if session[:token]
    # Load the access token here if it's available
    @client.authorization.update_token!(session[:token].to_hash)
  end

  @buzz = @client.discovered_api('buzz')
  unless @client.authorization.access_token || request.path_info =~ /^\/oauth2/
    redirect to('/oauth2authorize')
  end
end

# Part of the OAuth flow
get '/oauth2authorize' do
  <<OUT
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Google Ruby API Buzz Sample</title>
</head>
<body>
<header><h1>Google Ruby API Buzz Sample</h1></header>
<div class="box">
<a class='login' href='#{@client.authorization.authorization_uri.to_s}'>Connect Me!</a>
</div>
</body>
</html>
OUT
end

# Part of the OAuth flow
get '/oauth2callback' do
  @client.authorization.fetch_access_token!
  unless session[:token]
    token_pair = TokenPair.new
    token_pair.update_token!(@client.authorization)
    # Persist the token here
    session[:token] = token_pair
  end
  redirect to('/')
end

# The method you're probably actually interested in. This one lists a page of your
# most recent activities
get '/' do
  response = @client.execute(
    @buzz.activities.list,
    'userId' => '@me', 'scope' => '@consumption', 'alt'=> 'json'
  )
  status, headers, body = response
  [status, {'Content-Type' => 'application/json'}, body]
end
