# Getting Started

This document provides all the basic information you need to start using the library. It covers important library concepts, shows examples for various use cases, and gives links to more information.

## Setup

There are a few setup steps you need to complete before you can use this library:

1.  If you don't already have a Google account, [sign up](https://www.google.com/accounts).
2.  If you have never created a Google APIs Console project, read the [Managing Projects page](http://developers.google.com/console/help/managing-projects) and create a project in the [Google API Console](https://console.developers.google.com/).

## Authentication and authorization

It is important to understand the basics of how API authentication and authorization are handled. All API calls must use either simple or authorized access (defined below). Many API methods require authorized access, but some can use either. Some API methods that can use either behave differently, depending on whether you use simple or authorized access. See the API's method documentation to determine the appropriate access type.

### 1. Simple API access (API keys)

These API calls do not access any private user data. Your application must authenticate itself as an application belonging to your Google Cloud project. This is needed to measure project usage for accounting purposes.

**API key**: To authenticate your application, use an [API key](https://cloud.google.com/docs/authentication/api-keys) for your Google Cloud Console project. Every simple access call your application makes must include this key.
    
> **Warning**: Keep your API key private. If someone obtains your key, they could use it to consume your quota or incur charges against your Google Cloud project.
    
### 2. Authorized API access (OAuth 2.0)

These API calls access private user data. Before you can call them, the user that has access to the private data must grant your application access. Therefore, your application must be authenticated, the user must grant access for your application, and the user must be authenticated in order to grant that access. All of this is accomplished with [OAuth 2.0](https://developers.google.com/identity/protocols/OAuth2) and libraries written for it.

*   **Scope**: Each API defines one or more scopes that declare a set of operations permitted. For example, an API might have read-only and read-write scopes. When your application requests access to user data, the request must include one or more scopes. The user needs to approve the scope of access your application is requesting.
*   **Refresh and access tokens**: When a user grants your application access, the OAuth 2.0 authorization server provides your application with refresh and access tokens. These tokens are only valid for the scope requested. Your application uses access tokens to authorize API calls. Access tokens expire, but refresh tokens do not. Your application can use a refresh token to acquire a new access token.
    
    > **Warning**: Keep refresh and access tokens private. If someone obtains your tokens, they could use them to access private user data.
    
*   **Client ID and client secret**: These strings uniquely identify your application and are used to acquire tokens. They are created for your Google Cloud project on the [API Access pane](https://console.developers.google.com/apis/credentials) of the Google Cloud. There are several types of client IDs, so be sure to get the correct type for your application:
    
    *   Web application client IDs
    *   Installed application client IDs
    *   [Service Account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) client IDs
    
    > **Warning**: Keep your client secret private. If someone obtains your client secret, they could use it to consume your quota, incur charges against your Google Cloud project, and request access to user data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google-api-client', '~> 0.34'

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
drive.authorization = ... # See Googleauth or Signet libraries

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
### Naming conventions vs JSON representation

Object properties in the ruby client use the standard ruby convention for naming -- snake_case. This differs from the underlying JSON representation which typically uses camelCase for properties. There are a few notable exceptions to this rule:

* For properties that are defined as hashes with user-defined keys, no translation is performed on the key.
* For embedded field masks in requests (for example, the Sheets API), specify the camelCase form when referencing fields.

Outside those exceptions, if a property is specified using camelCase in a request, it will be ignored during serialization and omitted from the request.

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

A block can be specified when making calls. If present, the block will be called with the result or error, rather than
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

### Paging

To fetch multiple pages of data, use the `fetch_all` method to wrap the paged query. This returns an
`Enumerable` that automatically fetches additional pages as needed.

```ruby
# List all calendar events
now = Time.now.iso8601
items = calendar.fetch_all do |token|
  calendar.list_events('primary',
                        single_events: true,
                        order_by: 'startTime',
                        time_min: now,
                        page_token: token)
end
items.each { |event| puts event.summary }
```

For APIs that use a field other than `items` to contain the results, an alternate field name can be supplied.

```ruby
# List all files in Drive
items = drive.fetch_all(items: :files) { |token| drive.list_files(page_token: token) }
items.each { |file| puts file.name }
```

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
file = drive.create_file(file, {}) # Returns a Drive::File instance
```

is equivalent to:

```ruby
file = Drive::File.new(id: '123', title: 'My document')
file.labels = Drive::File::Labels.new(starred: true)
file = drive.update_file(file) # Returns a Drive::File instance
```

IMPORTANT: Be careful when supplying hashes for request objects. If it is the last argument to a method, ruby will interpret the hash as keyword arguments. To prevent this, appending an empty hash as an extra parameter will avoid misinterpretation.

```ruby
file = {id: '123', title: 'My document', labels: { starred: true }}
file = drive.create_file(file) # Raises ArgumentError: unknown keywords: id, title, labels
file = drive.create_file(file, {}) # Returns a Drive::File instance
```

### Using raw JSON

To handle JSON serialization or deserialization in the application, set `skip_serialization` or
or `skip_deserializaton` options respectively. When setting `skip_serialization` in a request,
the body object must be a string representing the serialized JSON.

When setting `skip_deserialization` to true, the response from the API will likewise
be a string containing the raw JSON from the server.

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
result = translate.list_translations('Hello world!', 'es', source: 'en')
puts result.translations.first.translated_text
```

## Customizing endpoints

By default, client objects will connect to the default Google endpoints for =
their respective APIs. If you need to connect to a regional endpoint, a test
endpoint, or other custom endpoint, modify the `root_url` attribute of the
client object. For example:

```ruby
require "google/apis/docs_v1"
docs_service = Google::Apis::DocsV1::DocsService.new

docs_service.root_url = "https://my-custom-docs-endpoint.example.com/"

document = docs_service.get_document("my-document-id")
```

## Samples

See the [samples](https://github.com/google/google-api-ruby-client/tree/master/samples) for examples on how to use the client library for various
services.

## Generating APIs

For [Cloud Endpoints](https://cloud.google.com/endpoints/) or other APIs not included in the gem, ruby code can be
generated from the discovery document.

To generate from a local discovery file:

    $ generate-api gen <outdir> --file=<path>

A URL can also be specified:

    $ generate-api gen <outdir> --url=<url>

## Supported Ruby Versions

This library is currently supported on Ruby 1.9+.
However, Ruby 2.4 or later is strongly recommended, as earlier releases have
reached or are nearing end-of-life. After March 31, 2019, Google will provide
official support only for Ruby versions that are considered current and
supported by Ruby Core (that is, Ruby versions that are either in normal
maintenance or in security maintenance).
See https://www.ruby-lang.org/en/downloads/branches/ for further details.

## License

This library is licensed under Apache 2.0. Full license text is
available in [LICENSE](LICENSE).

## Support

Please [report bugs at the project on Github](https://github.com/google/google-api-ruby-client/issues). Don't
hesitate to [ask questions](http://stackoverflow.com/questions/tagged/google-api-ruby-client) about the client or APIs
on [StackOverflow](http://stackoverflow.com).
