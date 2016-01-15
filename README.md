# Google API Client

## Alpha

This library is in Alpha. We will make an effort to support the library, but we reserve the right to make incompatible
changes when necessary.

## Migrating from 0.8.x

Version 0.9 is not compatible with previous versions. See [MIGRATING](MIGRATING.md) for additional details on how to
migrate to the latest version.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google-api-client', '0.9'

```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google-api-client

## Usage

### Basic usage

To use an API, include the corresponding generated file and instantiate the service. For example to use the Drive API:

```ruby
require 'google/apis/drive_v2'

Drive = Google::Apis::DriveV2 # Alias the module
drive = Drive::DriveService.new
drive.authorization = authorization # See Googleauth or Signet libraries

# Search for files in Drive (first page only)
files = drive.list_files(q: "title contains 'finances'")
files.items.each do |file|
  puts file.title
end

# Upload a file
metadata = Drive::File.new(title: 'My document')
metadata = drive.insert_file(metadata, upload_source: 'test.txt', content_type: 'text/plain')

# Download a file
drive.get_file(metadata.id, download_dest: '/tmp/myfile.txt')
```

### Media

Methods that allow media operations have additional parameters to specify the upload source or download destination.

For uploads, the `upload_source` parameter can be specified with either a path to a file, an `IO` stream, or `StringIO`
instance.

For downloads, the `download_dest` parameter can also be either a path to a file, an `IO` stream, or `StringIO` instance.

Both uploads & downloads are resumable. If an error occurs during transmission the request will be automatically
retried from the last received byte.

### Errors & Retries

Retries are disabled by default, but enabling retries is strongly encouraged. The number of retries can be configured
via `Google::Apis::RequestOptions`. Any number greater than 0 will enable retries.

To enable retries for all services:

```ruby
Google::Apis::RequestOptions.default.retries = 5
```

With retries enabled globally, retries can be disabled for specific calls by including a retry value of 0 in the
request options:

```ruby
drive.insert_file(metadata, upload_source: 'test.txt', content_type: 'text/plain', options: { retries: 0 })
```

When retries are enabled, if a server or rate limit error occurs during a request it is automatically retried with
an exponentially increasing delay on subsequent retries. If a request can not be retried or if the maximum number
of retries is exceeded, an exception is thrown.

### Callbacks

A block an be specified when making calls. If present, the block will be called with the result or error, rather than
returning the result from the call or raising the error. Example:

```ruby
# Search for files in Drive (first page only)
drive.list_files(q: "title contains 'finances'") do |res, err|
  if err
    # Handle error
  else
    # Handle response
  end
end
```

This calling style is required when making batch requests as responses are not available until the entire batch
is complete.

### Batches

Multiple requests can be batched together into a single HTTP request to reduce overhead. Batched calls are executed
in parallel and the responses processed once all results are available


```ruby
# Fetch a bunch of files by ID
ids = ['file_id_1', 'file_id_2', 'file_id_3', 'file_id_4']
drive.batch do |drive|
  ids.each do |id|
    drive.get_file(id) do |res, err|
      # Handle response
    end
  end
end
```

Media operations -- uploads & downloads -- can not be included in batch with other requests.

However, some APIs support batch uploads. To upload multiple files in a batch, use the `batch_upload` method instead.
Batch uploads should only be used when uploading multiple small files. For large files, upload files individually to
take advantage of the libraries built-in resumable upload support.

### Hashes

While the API will always return instances of schema classes, plain hashes are accepted in method calls for
convenience. Hash keys must be symbols matching the attribute names on the corresponding object the hash is meant
to replace. For example:

```ruby
file = {id: '123', title: 'My document', labels: { starred: true }}
file = drive.insert_file(file) # Returns a Drive::File instance
```

is equivalent to:

```ruby
file = Drive::File.new(id: '123', title: 'My document')
file.labels = Drive::File::Labels.new(starred: true)
file = drive.update_file(file) # Returns a Drive::File instance
```

## Authorization

[OAuth 2](https://developers.google.com/accounts/docs/OAuth2) is used to authorize applications. This library uses
both [Signet](https://github.com/google/signet) and
[Google Auth Library for Ruby](https://github.com/google/google-auth-library-ruby) for OAuth 2 support.

The [Google Auth Library for Ruby](https://github.com/google/google-auth-library-ruby) provides an implementation of
[application default credentials] for Ruby. It offers a simple way to get authorization credentials for use in
calling Google APIs, best suited for cases when the call needs to have the same identity
and authorization level for the application independent of the user. This is
the recommended approach to authorize calls to Cloud APIs, particularly when
you're building an application that uses Google Compute Engine.

For per-user authorization, use [Signet](https://github.com/google/signet) to obtain user authorization.

### Passing authorization to requests

Authorization can be specified for the entire client, for an individual service instance, or on a per-request basis.

Set authorization for all service:

```ruby
Google::Apis::RequestOptions.default.authorization = authorization
# Services instantiated after this will inherit the authorization
```

On a per-service level:

```ruby
drive = Google::Apis::DriveV2::DriveService.new
drive.authorization = authorization

# All requests made with this service will use the same authorization
```

Per-request:

```ruby
drive.get_file('123', options: { authorization: authorization })
```

### Authorization using API keys

Some APIs allow using an API key instead of OAuth2 tokens. For these APIs, set
the `key` attribute of the service instance. For example:

```ruby
require 'google/apis/translate_v2'

translate = Google::Apis::TranslateV2::TranslateService.new
translate.key = 'YOUR_API_KEY_HERE'
result = translate.list_translations(source: 'en', target: 'es', q: 'Hello world!')
puts result.translations.first.translated_text
```

## Samples

Samples for versions 0.9 and onward can be found in the `samples` directory.
Contributions for additional samples are welcome. See [CONTRIBUTING](CONTRIBUTING.md).

Samples for previous versions can be found in the
[google-api-ruby-client-samples](https://github.com/google/google-api-ruby-client-samples)
repository.


## Generating APIs

For [Cloud Endpoints](https://cloud.google.com/endpoints/) or other APIs not included in the gem, ruby code can be
generated from the discovery document.

To generate from a local discovery file:

    $ generate-api gen <outdir> --file=<path>

A URL can also be specified:

    $ generate-api gen <outdir> --url=<url>

## TODO

*  ETag support (if-not-modified)
*  Auto-paging results (maybe)
*  Caching
*  Model validations

## License

This library is licensed under Apache 2.0. Full license text is
available in [LICENSE.txt](LICENSE.txt).

## contributing

See [CONTRIBUTING](CONTRIBUTING.md).

## Support

Please [report bugs at the project on Github](https://github.com/google/google-api-ruby-client/issues). Don't
hesitate to [ask questions](http://stackoverflow.com/questions/tagged/google-api-ruby-client) about the client or APIs
on [StackOverflow](http://stackoverflow.com).
