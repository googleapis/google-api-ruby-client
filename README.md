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

    # Initialize the client & Google+ API
    require 'google/api_client'
    client = Google::APIClient.new
    plus = client.discovered_api('plus')

    # Initialize OAuth 2.0 client    
    client.authorization.client_id = '<CLIENT_ID_FROM_API_CONSOLE>'
    client.authorization.client_secret = '<CLIENT_SECRET>'
    client.authorization.scope = 'https://www.googleapis.com/auth/plus.me'
    
    # Request authorization
    redirect_uri = client.authorization.authorization_uri

    # Wait for authorization code then exchange for token
    client.authorization.code = '....'
    client.authorization.fetch_access_token!
    
    # Make an API call
    result = client.execute(
      :api_method => plus.activities.list'
      :parameters => {'collection' => 'public', 'userId' => 'me'}
    )

    puts result.data
    
# Install

Be sure `http://rubygems.org/` is in your gem sources.

For normal client usage, this is sufficient:

    $ sudo gem install google-api-client

The command line interface, the example applications, and the test suite
require additional dependencies. These may be obtained with:

    $ sudo gem install google-api-client --development --force --no-rdoc --no-ri
