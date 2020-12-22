# API Keys

When calling APIs that do not access private user data, you can use simple API keys. These keys are used to authenticate your application for accounting purposes. The Google Developers Console documentation also describes [API keys](https://developers.google.com/console/help/using-keys).

> Note: If you do need to access private user data, you must use OAuth 2.0. See [Using OAuth 2.0 for Installed Applications](oauth-installed.md), [Using OAuth 2.0 for Server to Server Applications](oauth-server.md), and [Using OAuth 2.0 for Web Server Applications](oauth-web.md) for more information.

## Using API Keys

To use API keys, set the `key` attribute on service objects. For example:

```ruby
require 'google/apis/translate_v2'

translate = Google::Apis::TranslateV2::TranslateService.new
translate.key = 'YOUR_API_KEY_HERE'
result = translate.list_translations('Hello world!', 'es', source: 'en')
puts result.translations.first.translated_text
```

All calls made using that service object will include your API key.
