# Simple REST Clients for Google APIs

This repository contains a set of simple client libraries for various Google APIs. These libraries are generated automatically from [Discovery Documents](https://developers.google.com/discovery), and the code generator is also hosted here in this repository.

Each client provides:

* A client object that connects to the HTTP/JSON REST endpoint for the service.
* Ruby objects for data structures related to the service.
* Integration with the googleauth gem for authentication using OAuth, API keys, and service accounts.
* Control of retry, pagination, and timeouts.

These client libraries are officially supported by Google, and are updated regularly to track changes to the service. However, many Google services, especially Google Cloud Platform services such as Cloud Storage, Pub/Sub, and BigQuery, may provide a more modern client that is easier to use and more performant. See the section below titled ["Which client should I use?"](#which-client-should-i-use) for more information.

## Using the clients

The client gems are named according to the pattern `google-apis-<servicename>_<serviceversion>`. For example, the client for the Google Drive V3 API is `google-apis-drive_v3`.

Install the client using `gem install` or by adding it to your `Gemfile`. Then, to use it, require the file and instantiate the service. For example to use the Drive API:

```ruby
require 'google/apis/drive_v3'

drive = Google::Apis::DriveV3::DriveService.new
drive.authorization = ... # See Googleauth or Signet libraries

# Search for files in Drive (first page only)
files = drive.list_files(q: "title contains 'finances'")
files.items.each do |file|
  puts file.title
end

# Upload a file
metadata = Google::Apis::DriveV3::File.new(name: 'test.txt')
metadata = drive.create_file(metadata, upload_source: '/tmp/test.txt', content_type: 'text/plain')

# Download a file
drive.get_file(metadata.id, download_dest: '/tmp/downloaded-test.txt')
```

Following is another example using the Content API (Google Merchant Center), provided by the `google-apis-content_v2_1` gem:

```ruby
require 'google/apis/content_v2_1'
require 'googleauth' # https://github.com/googleapis/google-auth-library-ruby

content = Google::Apis::ContentV2_1::ShoppingContentService.new

scope = 'https://www.googleapis.com/auth/content'
merchant_id = # Merchant ID found on dashboard

content.authorization = Google::Auth::ServiceAccountCredentials.make_creds(
  json_key_io: File.open('./content-api-key.json'),
  scope: scope)

content.authorization.fetch_access_token!
# Service methods: https://googleapis.dev/ruby/google-api-client/latest/Google/Apis/ContentV2_1/ShoppingContentService.html
content.list_datafeeds(merchant_id) # Returns Google::Apis::ContentV2_1::ListDatafeedsResponse
```

For more detailed information, see the [Usage Guide](https://github.com/googleapis/google-api-ruby-client/blob/main/docs/usage-guide.md).

## Which client should I use?

Google provides two types of Ruby API client libraries: **simple REST clients** and **modern clients**.

The libraries in this repo are _simple REST clients_. These clients connect to HTTP/JSON REST endpoints and are automatically generated from service discovery documents. They support most API functionality, but their class interfaces are sometimes awkward.

Modern clients are produced by a modern code generator, combined with hand-crafted functionality for some services. Most modern clients connect to high-performance gRPC endpoints, although a few are backed by REST services. Modern clients are available for many Google services, especially Cloud Platform services, but do not yet support all the services covered by the simple clients. Most modern clients live in the https://github.com/googleapis/google-cloud-ruby repository.

**For most users, we recommend the modern client, if one is available.** Compared with simple clients, modern clients are generally much easier to use and more Ruby-like, support more advanced features such as streaming and long-running operations, and often provide much better performance. You may consider using a simple client instead, if a modern client is not yet available for the service you want to use, or if you are not able to use gRPC on your infrastructure.

The documentation for the particular Google service you are working with, may provide guidance regarding the preferred client library to use.

## Samples

See the [samples](https://github.com/google/google-api-ruby-client/tree/main/samples) for examples on how to use the client library for various
services.

## Supported Ruby versions

This library is supported on Ruby 2.5+.

Google provides official support for Ruby versions that are actively supported by Ruby Core -- that is, Ruby versions that are either in normal maintenance or in security maintenance, and not end of life. Currently, this means Ruby 2.5 and later. Older versions of Ruby _may_ still work, but are unsupported and not recommended. See https://www.ruby-lang.org/en/downloads/branches/ for details about the Ruby support schedule.

## License

This library is licensed under Apache 2.0. Full license text is available in the [LICENSE](LICENSE).

## Contributing

See [CONTRIBUTING](.github/CONTRIBUTING.md).

## Support

Please [report bugs at the project on Github](https://github.com/google/google-api-ruby-client/issues). Don't hesitate to [ask questions](http://stackoverflow.com/questions/tagged/google-api-ruby-client) about the client or APIs on [StackOverflow](http://stackoverflow.com).
