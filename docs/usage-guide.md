# Usage Guide for Legacy REST Clients

This document provides all the basic information you need to start using the legacy REST clients for Google APIs. It covers important library concepts, shows examples for various use cases, and gives links to more information.

> **Note:** this is a "general" document, and not specific to this particular service client. In particular, you may find that the examples in this document are for a different client. All legacy REST clients follow the same usage patterns, and you should be able to adapt the provided examples to the client you are using.

## Before you begin

There are a few setup steps you need to complete before you can use this library:

 1. If you don't already have a Google account, [sign up](https://www.google.com/accounts).
 2. If you have never created a Google APIs Console project, read about [Managing Projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects) and create a project in the [Google API Console](https://console.cloud.google.com/).
 3. Most APIs need to be enabled for your project. [Enable it](https://console.cloud.google.com/apis/library/<%= api.name %>.googleapis.com) in the console.

## Installation

Add the client to your application's Gemfile. For example, to use the Drive V2 client:

```ruby
gem 'google-apis-drive_v2', '~> 0.1'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install google-apis-drive_v2
```

## Basic usage

To use an API, include the corresponding generated file and instantiate the service. For example to use the Drive API:

```ruby
require 'google/apis/drive_v2'

drive = Google::Apis::DriveV2::DriveService.new
drive.authorization = ... # See Googleauth or Signet libraries

# Search for files in Drive (first page only)
files = drive.list_files(q: "title contains 'finances'")
files.items.each do |file|
  puts file.title
end

# Upload a file
metadata = Google::Apis::DriveV2::File.new(title: 'My document')
metadata = drive.insert_file(metadata, upload_source: 'test.txt', content_type: 'text/plain')

# Download a file
drive.get_file(metadata.id, download_dest: '/tmp/myfile.txt')
```

## Authorization

All API calls need to be authenticated, to ensure authorized access to data, and for proper accounting for quota and billing. Google legacy REST clients support several different types of authentication, including OAuth 2.0, service accounts, API keys, and default credentials. Detailed documentation, including examples of several common authentication flows, is provided in the separate [Auth Guide](auth-guide.md). In the present document, we will discuss a few basic cases to get started.

### Auth libraries

Most auth functionality is provided in two separate Ruby gems, which legacy REST clients bring in as dependencies.

* The [signet](https://github.com/google/signet) gem is a basic implementation of [OAuth 2](https://developers.google.com/accounts/docs/OAuth2). For calls that require per-user authorization, it can be used to direct the OAuth flow needed to obtain authorization.
* The [googleauth](https://github.com/google/google-auth-library-ruby) gem builds atop signet, and offers a simple way to get credentials for use in Google APIs when auth is independent of the user. In particular, this is the recommend approach for many Cloud APIs.
* Some APIs can also take API keys for user-independent auth. API keys do not require use of a separate library.

### Getting automatic credentials

If your application is calling an API that does *not* require per-user authorization -- that is, it does not require a different access level depending on who is using the application -- you may be able to use [Application Default Credentials](https://cloud.google.com/docs/authentication/production#automatically) (ADC). Application Default Credentials is a standard way to provide your app with credentials needed to access Google services.

If your application is running in a Google hosting environment, such as Google Compute Engine, Google App Engine, Google Kubernetes Engine, Google Cloud Run, or Google Cloud Functions, that hosting environment will provide a set of default credentials to your app. The hosting environment may also provide a way to configure credentials, for example to set different scopes delineating which services can be accessed. See the hosting environment documentation for more information.

If your application is *not* running in a Google hosting environment, you should provide your own default credentials by creating a [service account](https://cloud.google.com/iam/docs/service-accounts) and downloading the service account key JSON file. Set the `GOOGLE_APPLICATION_CREDENTIALS` environment variable to the full path to the JSON file when your application runs.

Once you've obtained credentials, either by running in a Google hosting environment or by pointing the `GOOGLE_APPLICATION_CREDENTIALS` environment variable to a JSON key file, you can load those credentials into a *credentials object* using the googleauth gem:

```ruby
authorization = Google::Auth.get_application_default
```

You will use this credential object to authorize API calls.

### Getting OAuth credentials

If your application is calling an API that requires per-user authorization, you will need to obtain an OAuth 2.0 token by requesting user authorization. See the [Auth Guide](auth-guide.md) for examples of how to implement this. The resulting authorization object will be in the form of a signet client.

### Passing authorization to requests

Once you've obtained an authorization object, either from default authorization, from OAuth 2.0, or from some other source, you can use it to authorize API requests. Authorization can be specified for the entire client, for an individual service instance, or on a per-request basis.

To set authorization for all service:

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

Some APIs allow using an API key instead of OAuth2 tokens. For these APIs, set the `key` attribute of the service instance. For example:

```ruby
require 'google/apis/translate_v2'

translate = Google::Apis::TranslateV2::TranslateService.new
translate.key = 'YOUR_API_KEY_HERE'
result = translate.list_translations('Hello world!', 'es', source: 'en')
puts result.translations.first.translated_text
```

## Data formats

Clients provide classes for most data types in the service's schema. Result values returned from API calls use these classes, and you can also use them to pass request parameters to a call. 

### Hashes

While the API will always return instances of schema classes, plain hashes are accepted in method calls for convenience. Hash keys must be symbols matching the attribute names on the corresponding object the hash is meant to replace. For example:

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

IMPORTANT: Be careful when supplying hashes for request objects. If it is the last argument to a method, some versions of Ruby will interpret the hash as keyword arguments. To prevent this, appending an empty hash as an extra parameter will avoid misinterpretation.

```ruby
file = {id: '123', title: 'My document', labels: { starred: true }}
file = drive.create_file(file) # Raises ArgumentError: unknown keywords: id, title, labels
file = drive.create_file(file, {}) # Returns a Drive::File instance
```

### Using raw JSON

To handle JSON serialization or deserialization in the application, set `skip_serialization` or `skip_deserializaton` options respectively. When setting `skip_serialization` in a request, the body object must be a string representing the serialized JSON.

When setting `skip_deserialization` to true, the response from the API will likewise be a string containing the raw JSON from the server.

### Naming conventions vs JSON representation

Object properties in the ruby client use the standard ruby convention for naming -- snake_case. This differs from the underlying JSON representation which typically uses camelCase for properties. There are a few notable exceptions to this rule:

* For properties that are defined as hashes with user-defined keys, no translation is performed on the key.
* For embedded field masks in requests (for example, the Sheets API), specify the camelCase form when referencing fields.

Outside those exceptions, if a property is specified using camelCase in a request, it will be ignored during serialization and omitted from the request.

## Media

Methods that allow media operations have additional parameters to specify the upload source or download destination. For uploads, the `upload_source` parameter can be specified with either a path to a file, an `IO` stream, or `StringIO` instance. For downloads, the `download_dest` parameter can also be either a path to a file, an `IO` stream, or `StringIO` instance. Both uploads & downloads are resumable. If an error occurs during transmission the request will be automatically retried from the last received byte.

### Media Upload

For APIs that support file uploads, two additional keyword parameters are available on the method. The parameter `upload_source` specifies the content to upload while `content_type` indicates the MIME type. The upload source may be either a file name, IO, or StringIO instance.

For example, to upload a file named `mymovie.m4v` to Google Drive:

```rb
require 'google/apis/drive_v2'

drive = Google::Apis::DriveV2:DriveService.new
drive.authorization = ...
drive.insert_file({title: 'My Favorite Movie'}, upload_source: 'mymovie.m4v',
                  content_type: 'video/mp4')
```

### Resumable media

For large media files, you can use resumable media uploads to send files, which allows files to be uploaded in smaller chunks. This is especially useful if you are transferring large files, and the likelihood of a network interruption or some other transmission failure is high. It can also reduce your bandwidth usage in the event of network failures because you don't have to restart large file uploads from the beginning.

To use resumable uploads, enable retries by setting the retry count to any value greater than 0. The client will automatically resume the upload in the event of an error, up to the configured number of retries.:

```rb
drive.insert_file(file_metadata, upload_source: 'mymovie.m4v',
                  content_type: 'video/mp4', options: { retries: 3 } )
```

## Errors & Retries

Retries are disabled by default, but enabling retries is strongly encouraged. The number of retries can be configured via `Google::Apis::RequestOptions`. Any number greater than 0 will enable retries.

To enable retries for all services:

```ruby
Google::Apis::RequestOptions.default.retries = 5
```

With retries enabled globally, retries can be disabled for specific calls by including a retry value of 0 in the request options:

```ruby
drive.insert_file(metadata, upload_source: 'test.txt', content_type: 'text/plain', options: { retries: 0 })
```

When retries are enabled, if a server or rate limit error occurs during a request it is automatically retried with an exponentially increasing delay on subsequent retries. If a request can not be retried or if the maximum number of retries is exceeded, an exception is thrown.

### Callbacks

A block can be specified when making calls. If present, the block will be called with the result or error, rather than returning the result from the call or raising the error. Example:

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

This calling style is required when making batch requests as responses are not available until the entire batch is complete.

## Pagination

Some API methods may return very large lists of data. To reduce the response size, many of these API methods support pagination. With paginated results, your application can iteratively request and process large lists one page at a time. When using API methods that support pagination, responses will come back with a next_page property, which builds a request for the next page for you.

To process the first page of results, construct a request as you normally would. There's usually an API-level parameter you can provide to specify the maximum size of each page, so be sure to check the API's documentation.

`stamps = service.list_stamps(cents: 5, max_results: 20)`

For further pages, repeat the request including the next page token from the previous result.

`stamps = service.list_stamps(cents:5, max_results: 20, page_token: stamps.next_page_token)`

Here is a full example which loops through the paginated results of a user's public Google Plus activities feed:

```rb
require 'google/apis/plus_v1'

plus = Google::Apis::PlusV1::PlusService.new
plus.key = '...' # API Key from the Google Developers Console
next_page = nil
begin
  puts "Fetching page of activities"
  activities = plus.list_activities('103354693083460731603', 'public', page_token: next_page)
  activities.items.each do |activity|
    puts "#{activity.published} #{activity.title}"
  end
  next_page = activities.next_page_token
end while next_page
```

### Fetching multiple pages

To fetch multiple pages of data, use the `fetch_all` method to wrap the paged query. This returns an `Enumerable` that automatically fetches additional pages as needed.

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
items = drive.fetch_all(items: :files) do |token|
  drive.list_files(page_token: token)
end
items.each { |file| puts file.name }
```

## Batches

Multiple requests can be batched together into a single HTTP request to reduce overhead. Batched calls are executed in parallel and the responses processed once all results are available


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

However, some APIs support batch uploads. To upload multiple files in a batch, use the `batch_upload` method instead. Batch uploads should only be used when uploading multiple small files. For large files, upload files individually to take advantage of the libraries built-in resumable upload support.

## Logging

Logging is enabled by default in this library using Ruby's standard Logger class.

You can access the library logger with the logger property of Google::Apis.

You can set the logging level to one of the following:

- FATAL (least amount of logging)
- ERROR
- WARN
- INFO
- DEBUG (most amount of logging)

In the following code, the logging level is set to DEBUG and the Google Plus API is called:

```rb
require 'google/apis/plus_v1'

Google::Apis.logger.level = Logger::DEBUG

plus = Google::Apis::PlusV1::PlusService.new
activities = plus.list_activities('103354693083460731603', 'public')
```

The output of this code should include debug info:

```
D, [2015-06-26T14:33:42.583914 #12144] DEBUG -- : Sending HTTP get https://www.googleapis.com/plus/v1/people/103354693083460731603/activities/public?key=...
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

## Performance Tips

This section covers techniques you can use to improve the performance of your application. The documentation for the specific API you are using should have a similar page with more detail on some of these topics. For example, see the Performance Tips page for the Google Drive API.

### Partial response (fields parameter)

By default, the server sends back the full representation of a resource after processing requests. For better performance, you can ask the server to send only the fields you really need and get a partial response instead.

To request a partial response, add the standard fields parameter to any API method. The value of this parameter specifies the fields you want returned. You can use this parameter with any request that returns response data.

In the following code snippet, the list_stamps method of a fictitious Stamps API is called. The cents parameter is defined by the API to only return stamps with the given value. The value of the fields parameter is set to 'count,items/name'code>. The response will only contain stamps whose value is 5 cents, and the data returned will only include the number of stamps found along with the stamp names:

`response = service.list_stamps(cents: 5, fields: 'count,items/name')`

Note how commas are used to delimit the desired fields, and slashes are used to indicate fields that are contained in parent fields. There are other formatting options for the fields parameter, and you should see the "Performance Tips" page in the documentation for the API you are using.

### Partial update (patch)

If the API you are calling supports patch, you can avoid sending unnecessary data when modifying resources. For these APIs, you can call the patch() method and supply the arguments you wish to modify for the resource. If supported, the API's reference will have documentation for the patch() method.

For more information about patch semantics, see the "Performance Tips" page in the documentation for the API you are using.

### Batches

If you are sending many small requests you may benefit from batching, which allows those requests to be bundled into a single HTTP request.
