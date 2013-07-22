# Google API Client

<dl>
  <dt>Homepage</dt><dd><a href="http://www.github.com/google/google-api-ruby-client">http://www.github.com/google/google-api-ruby-client</a></dd>
  <dt>Authors</dt><dd>Bob Aman, <a href="mailto:sbazyl@google.com">Steven Bazyl</a></dd>
  <dt>Copyright</dt><dd>Copyright © 2011 Google, Inc.</dd>
  <dt>License</dt><dd>Apache 2.0</dd>
</dl>

[![Build Status](https://secure.travis-ci.org/google/google-api-ruby-client.png)](http://travis-ci.org/google/google-api-ruby-client)
[![Dependency Status](https://gemnasium.com/google/google-api-ruby-client.png)](https://gemnasium.com/google/google-api-ruby-client)

## Description

The Google API Ruby Client makes it trivial to discover and access supported
APIs.

## Install

Be sure `http://rubygems.org/` is in your gem sources.

For normal client usage, this is sufficient:

```bash
$ gem install google-api-client
```

## Example Usage

```ruby
# Initialize the client & Google+ API
require 'google/api_client'
client = Google::APIClient.new
plus = client.discovered_api('plus')

# Initialize OAuth 2.0 client
client.authorization.client_id = '<CLIENT_ID_FROM_API_CONSOLE>'
client.authorization.client_secret = '<CLIENT_SECRET>'
client.authorization.redirect_uri = '<YOUR_REDIRECT_URI>'

client.authorization.scope = 'https://www.googleapis.com/auth/plus.me'

# Request authorization
redirect_uri = client.authorization.authorization_uri

# Wait for authorization code then exchange for token
client.authorization.code = '....'
client.authorization.fetch_access_token!

# Make an API call
result = client.execute(
  :api_method => plus.activities.list,
  :parameters => {'collection' => 'public', 'userId' => 'me'}
)

puts result.data
```

## API Features

### API Discovery

To take full advantage of the client, load API definitions prior to use. To load an API:

```ruby
urlshortener = client.discovered_api('urlshortener')
```

Specific versions of the API can be loaded as well:

```ruby
drive = client.discovered_api('drive', 'v2')
```

Locally cached discovery documents may be used as well. To load an API from a local file:

```ruby
doc = File.read('my-api.json')
my_api = client.register_discovery_document('myapi', 'v1', doc)
```

### Authorization

Most interactions with Google APIs require users to authorize applications via OAuth 2.0. The client library uses [Signet](https://github.com/google/signet) to handle most aspects of authorization. For additional details about Google's OAuth support, see [Google Developers](https://developers.google.com/accounts/docs/OAuth2).

Credentials can be managed at the connection level, as shown, or supplied on a per-request basis when calling `execute`.

For server-to-server interactions, like those between a web application and Google Cloud Storage, Prediction, or BigQuery APIs, use service accounts.

```ruby
key = Google::APIClient::KeyUtils.load_from_pkcs12('client.p12', 'notasecret')
client.authorization = Signet::OAuth2::Client.new(
  :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
  :audience => 'https://accounts.google.com/o/oauth2/token',
  :scope => 'https://www.googleapis.com/auth/prediction',
  :issuer => '123456-abcdef@developer.gserviceaccount.com',
  :signing_key => key)
client.authorization.fetch_access_token!
client.execute(...)
```

### Batching Requests

Some Google APIs support batching requests into a single HTTP request. Use `Google::APIClient::BatchRequest`
to bundle multiple requests together.

Example:

```ruby
client = Google::APIClient.new
urlshortener = client.discovered_api('urlshortner')

batch = Google::APIClient::BatchRequest.new do |result|
    puts result.data
end

batch.add(:api_method => urlshortener.url.insert,
          :body_object => { 'longUrl' => 'http://example.com/foo' })
batch.add(:api_method => urlshortener.url.insert,
          :body_object => { 'longUrl' => 'http://example.com/bar' })
client.execute(batch)
```

Blocks for handling responses can be specified either at the batch level or when adding an individual API call. For example:

```ruby
batch.add(:api_method=>urlshortener.url.insert, :body_object => { 'longUrl' => 'http://example.com/bar' }) do |result|
   puts result.data
end
```

### Media Upload

For APIs that support file uploads, use `Google::APIClient::UploadIO` to load the stream. Both multipart and resumable
uploads can be used. For example, to upload a file to Google Drive using multipart

```ruby
drive = client.discovered_api('drive', 'v2')

media = Google::APIClient::UploadIO.new('mymovie.m4v', 'video/mp4')
metadata = {
    'title' => 'My movie',
    'description' => 'The best home movie ever made'
}
client.execute(:api_method => drive.files.insert,
               :parameters => { 'uploadType' => 'multipart' },
               :body_object => metadata,
               :media => media )
```

To use resumable uploads, change the `uploadType` parameter to `resumable`. To check the status of the upload
and continue if necessary, check `result.resumable_upload`.

```ruby
client.execute(:api_method => drive.files.insert,
           :parameters => { 'uploadType' => 'resumable' },
           :body_object => metadata,
           :media => media )
upload = result.resumable_upload

### Server-to-server scenario for domain account
Here is required setup to use google admin SDK for server-to-server scenario (without involving 3-rd party user for authorization) for domain account.
It's most common case for enterprise users

#### Steps within google
1. Go to https://code.google.com/apis/console ([screenshot](http://monosnap.com/image/ztpKjmmAl7Nc5Zgk8oLpvWkG9))
  * click "API Access" on the left menu
  * click button that says "Create another client ID" [(screenshot)](http://monosnap.com/image/G30mxsPfwfOUaZmnlRMW0AFtJ) or [(screenshot)](http://monosnap.com/image/FCEYuVS8ekzuQQCZRmQUZ2OnO)
  * choose "service account" radio button [(screenshot)](http://monosnap.com/image/YIhIwTTgeSd36Tn3SCFlsQ8Pd)
  * click "create"
  * download private key and SAVE it.  (We will refer this as "PRIVATE_KEY") [(screenshot)](http://monosnap.com/image/gtAgswPpUuPpn3QVk5U5LaCR9)  
    **NOTE if you don't download it then you must start over!**
2. Go to admin.google.com
  * click security [(screenshot)](http://monosnap.com/image/xSV9PLuj0ILkm2JJ6cvFTCBaC)
  * go to advanced settings [(screenshot)](http://monosnap.com/image/5UaPIh1Exjl3DmgOJTX42ZDsu)
  * Click manage Oauth Domain Key [(screenshot)](http://monosnap.com/image/xrjil9IwuY2OrXEg1kzBMR8wg)
  * check "Enable this consumer key", check "allow 2 legged", click SAVE [(screenshot)](http://monosnap.com/image/TSH3HPTkxM79NICSYk4PgLwng)
3. go back to SECURITY in admin.google.com
4. Click on manage 3rd party clients [(screenshot)](http://monosnap.com/image/j1DIe4RHMV5iN2tCEJhP0nG2Y)
    * Enter service account ID from API console
    * Enter the scope (ex. https://www.googleapis.com/auth/admin.directory.group)
    * click authorize [(screenshot)](http://monosnap.com/image/uG5sbINQIxTE41OFJep5v0Xli)

#### Sample application:

    require 'google/api_client'
    client = Google::APIClient.new
    key = Google::APIClient::KeyUtils.load_from_pkcs12('test2-privatekey.p12', 'notasecret')

    client.authorization = Signet::OAuth2::Client.new(
      :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
      :audience => 'https://accounts.google.com/o/oauth2/token',
      :scope => 'https://www.googleapis.com/auth/admin.directory.group',
      :issuer => 'XXXXXXXXXservice_account_emailXXXXXXXX@developer.gserviceaccount.com',
      :signing_key => key,
      :person => 'person@yourcompany.co')
  
    client.authorization.fetch_access_token!
    directory = client.discovered_api('admin', 'directory_v1')

    result = client.execute!(
      :api_method => directory.groups.insert,
      :parameters => {groupKey: 'api_admin@backops.co'},
      :body_object => {email: 'newperson@yourcompany.co'})
    result.data

# Resume if needed
if upload.resumable?
    client.execute(upload)
end
```

## Command Line

Included with the gem is a command line interface for working with Google APIs.

```bash
# Log in
google-api oauth-2-login --client-id='...' --client-secret='...' --scope="https://www.googleapis.com/auth/plus.me"

# List the signed-in user's activities
google-api execute plus.activities.list --api=plus -- userId="me" collection="public"

# Start an interactive API session
google-api irb
>> plus = $client.discovered_api('plus')
>> $client.execute(plus.activities.list, {'userId' => 'me', 'collection' => 'public'})
=> # returns a response from the API
```

For more information, use `google-api --help`

## Samples

See the full list of [samples on Google Code](http://code.google.com/p/google-api-ruby-client/source/browse?repo=samples).


## Support

Please [report bugs at the project on Github](https://github.com/google/google-api-ruby-client/issues). Don't hesitate to [ask questions](http://stackoverflow.com/questions/tagged/google-api-ruby-client) about the client or APIs on [StackOverflow](http://stackoverflow.com).
