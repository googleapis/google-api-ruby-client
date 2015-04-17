# Migrating from version `0.8.x` to `1.x`

Many changes and improvements have been made to the `google-api-ruby-client`
library to bring it to `1.x`. If you are starting a new project or haven't used
this library before version `1.x`, see the [README][readme] to get started
as you won't need to migrate anything.

Code written against the `0.8.x` version of this library will not with the `1.x`
version without modification.

## Discovery

In `0.8.x` the library would "discover" APIs on the fly, introducing
additional network calls and instability. That has been fixed in `1.0`.

To get the `drive` client in `0.8.x` required this:

```ruby
require 'google/api_client'

client = Google::APIClient.new
drive = client.discovered_api('drive', 'v2')
```

In `1.0` the same thing can be accomplished like this:

```ruby
require 'google/apis/drive_v2'

drive = Google::Apis::DriveV2::DriveService.new
```

All APIs are immediately accessible without requiring additional network calls or runtime code generation.

## API Methods

The calling style for API methods has changed. In `0.8.x` all calls were via a generic `execute` method. In `1.x`
the generated services have fully defined method signatures for all available methods.

To get a file using the Google Drive API in `0.8.x` required this:

```ruby
file = client.execute(:api_method => drive.file.get, :parameters => { 'id' => 'abc123' })
```

In `1.0` the same thing can be accomplished like this:

```ruby
file = drive.get_file('abc123')
```

Full API definitions including available methods and data classes can be found in the `generated` directory.

## Authorization

In the 1.x version of this library, the authentication and authorization code was moved
to the new [googleauth](google-auth-library-ruby) library. While the new library provides
significantly simpler APIs for some use cases, not all features have been migrated. Missing features
are expected to be added by end of Q2 2015.

The underlying [Signet](https://github.com/google/signet) is still used for authorization. OAuth 2 credentials obtained
previously will continue to work with the `1.x` version. OAuth 1 is no longer supported.

## Media uploads

Media uploads are significantly simpler in `1.x`.

The old `0.8.x` way of uploading media:

```ruby
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

The new way in `1.0` using `upload_source` and `content_type` parameters:

```ruby
metadata = {
  title: 'My movie',
  description: 'The best home movie ever made'
}
drive.insert_file(metadata, upload_source: 'mymovie.m4v', content_type: 'video/mp4')
```

`upload_source` can be either a path to a file, an `IO` stream, or a `StringIO` instance.

Uploads are resumable and will be automatically retried if interrupted.

## Media downloads

`1.x` introduces support for media downloads (`alt=media`). To download content, use the `download_dest` parameter:

```ruby
drive.get_file('abc123', download_dest: '/tmp/myfile.txt')
```

`download_dest` may be either a path to a file or an `IO` stream.

## Batch Requests

The old `0.8.x` way of performing batch requests:

```ruby
client = Google::APIClient.new
urlshortener = client.discovered_api('urlshortener')

batch = Google::APIClient::BatchRequest.new do |result|
    puts result.data
end

batch.add(:api_method => urlshortener.url.insert,
          :body_object => { 'longUrl' => 'http://example.com/foo' })
batch.add(:api_method => urlshortener.url.insert,
          :body_object => { 'longUrl' => 'http://example.com/bar' })
client.execute(batch)
```

In `1.x`, the equivalent code is:

```ruby
require 'google/apis/urlshortner_v1'

urlshortener = Google::Apis::UrlshortenerV1::UrlshortenerService.new

urlshortener.batch do |urlshortener|
  urlshortner.insert_url({long_url: 'http://example.com/foo'}) do |res, err|
    puts res
  end
  urlshortner.insert_url({long_url: 'http://example.com/bar'}) do |res, err|
    puts res
  end
end
```

Or if sharing the same block:

```ruby
require 'google/apis/urlshortner_v1'

urlshortener = Google::Apis::UrlshortenerV1::UrlshortenerService.new

callback = lambda { |res, err| puts res }
urlshortener.batch do |urlshortener|
  urlshortner.insert_url({long_url: 'http://example.com/foo'}, &callback)
  urlshortner.insert_url({long_url: 'http://example.com/bar'}, &callback)
end
```
