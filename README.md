# APIClient

<dl>
  <dt>Homepage</dt><dd><a href="http://code.google.com/p/google-api-ruby-client">http://code.google.com/p/google-api-ruby-client</a></dd>
  <dt>Author</dt><dd><a href="mailto:bobaman@google.com">Bob Aman</a></dd>
  <dt>Copyright</dt><dd>Copyright © 2011 Google, Inc.</dd>
  <dt>License</dt><dd>Apache 2.0</dd>
</dl>

[![Build Status](https://secure.travis-ci.org/google/google-api-ruby-client.png)](http://travis-ci.org/google/google-api-ruby-client)
[![Dependency Status](https://gemnasium.com/google/google-api-ruby-client.png)](https://gemnasium.com/google/google-api-ruby-client)

# Description

The Google API Ruby Client makes it trivial to discover and access supported
APIs.

# Example Usage

    # Initialize the client
    require 'google/api_client'
    require 'signet/oauth_1/client'
    client = Google::APIClient.new(
      :service => 'buzz',
      # Buzz has API-specific endpoints
      :authorization => Signet::OAuth1::Client.new(
        :temporary_credential_uri =>
          'https://www.google.com/accounts/OAuthGetRequestToken',
        :authorization_uri =>
          'https://www.google.com/buzz/api/auth/OAuthAuthorizeToken',
        :token_credential_uri =>
          'https://www.google.com/accounts/OAuthGetAccessToken',
        :client_credential_key => 'anonymous',
        :client_credential_secret => 'anonymous'
      )
    )
    client.authorization.fetch_temporary_credential!(
      :additional_parameters => {
        'scope' => 'https://www.googleapis.com/auth/buzz'
      }
    )
    redirect_uri = client.authorization.authorization_uri(
      :additional_parameters => {
        'domain' => client.authorization.client_credential_key,
        'scope' => 'https://www.googleapis.com/auth/buzz'
      }
    )
    # Redirect user here
    client.authorization.fetch_token_credential!(:verifier => '12345')
    
    # Discover available methods
    method_names = client.discovered_api('plus').to_h.keys
    
    # Make an API call
    result = client.execute(
      'plus.activities.list',
      {'collection' => 'public', 'userId' => 'me'}
    )

# Install

Be sure `http://rubygems.org/` is in your gem sources.

For normal client usage, this is sufficient:

    $ sudo gem install google-api-client

The command line interface, the example applications, and the test suite
require additional dependencies. These may be obtained with:

    $ sudo gem install google-api-client --development --force --no-rdoc --no-ri
