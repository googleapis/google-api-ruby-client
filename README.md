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

Be sure `https://rubygems.org/` is in your gem sources.

For normal client usage, this is sufficient:

```bash
$ gem install google-api-client
```

## Example Usage

```ruby
require 'google/api_client'
require 'google/api_client/client_secrets'
require 'google/api_client/auth/installed_app'

# Initialize the client.
client = Google::APIClient.new(
  :application_name => 'Example Ruby application',
  :application_version => '1.0.0'
)

# Initialize Google+ API. Note this will make a request to the
# discovery service every time, so be sure to use serialization
# in your production code. Check the samples for more details.
plus = client.discovered_api('plus')

# Load client secrets from your client_secrets.json.
client_secrets = Google::APIClient::ClientSecrets.load

# Run installed application flow. Check the samples for a more
# complete example that saves the credentials between runs.
flow = Google::APIClient::InstalledAppFlow.new(
  :client_id => client_secrets.client_id,
  :client_secret => client_secrets.client_secret,
  :scope => ['https://www.googleapis.com/auth/plus.me']
)
client.authorization = flow.authorize

# Make an API call.
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

Service accounts are also used for delegation in Google Apps domains. The target user for impersonation is specified by setting the `:person` parameter to the user's email address
in the credentials. Detailed instructions on how to enable delegation for your domain can be found at [developers.google.com](https://developers.google.com/drive/delegation).

### Automatic Retries & Backoff

The API client can automatically retry requests for recoverable errors. To enable retries, set the `client.retries` property to
the number of additional attempts. To avoid flooding servers, retries invovle a 1 second delay that increases on each subsequent retry.

The default value for retries is 0, but will be enabled by default in future releases.

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

# Resume if needed
if upload.resumable?
    client.execute(upload)
end
```

## Samples

See the full list of [samples on Github](https://github.com/google/google-api-ruby-client-samples).


## Support

Please [report bugs at the project on Github](https://github.com/google/google-api-ruby-client/issues). Don't hesitate to [ask questions](http://stackoverflow.com/questions/tagged/google-api-ruby-client) about the client or APIs on [StackOverflow](http://stackoverflow.com).
