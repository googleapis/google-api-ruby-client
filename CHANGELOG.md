# 0.9.20
* Regenerate APIs
* Add Slides API

# 0.9.19
* Regenerate APIs
* Add Adexchangebuyer2 API

# 0.9.15
* Add datastore v1
* Regenerate APIs

# 0.9.14
* Fix error handling with downloads, no longer fails silently
* Prevent form-encoding query parameters for APIs that don't expect it
* Regenerate APIs

# 0.9.13
* Fix fetch_all to work correctly with the genomics API
* Add speech & language APIs, regenerate APIs

# 0.9.12
* Regenerated APIs

# 0.9.11
* Add DFA Reporting 2.5, regenerate APIs

# 0.9.10
* Add datastore v1beta3, regenerate APIs
* Reduce memory footprint used by mimetypes library
* Fix bug with pagination when items collection is nil


# 0.9.9
* Add monitoring v3, regenerate APIs
* Add samples for sheets, bigquery

# 0.9.8
* Add mybusiness v3, regenerate APIs

# 0.9.7
* Add sheets v4 & analytics reporting v4, regenerate APIs

# 0.9.6
* Rewind output stream if server unable to honor range request when resuming a download
* Fix web sample
* Allow nil dates to be passed in request bodies

# 0.9.5
* Add youtube partner API
* Allow bypassing the use of rails logger via `GOOGLE_API_USE_RAILS_LOGGER` ENV variable
* Update generated APIs

# 0.9.4
* Add `service.fetch_all` helper for automatically retrieving paged results
* Add IAM v1 & Cloud Resource Manager v1 APIs
* Update generated APIs

# 0.9.3
* Drop ActiveSupport an MultiJson as dependencies. Active support is still included in the Gemfile
  and is needed to run the code generator.
* Allow falsey values in hash representations of objects
* Added `from_json` and `to_json` helpers to model classes
* Correctly propagate `open_timeout` in options
* Add the Cloud Vision API
* Update generated APIs

# 0.9.2
* Allow nil values to be used in `new` and `update!` for generated classes
* Update generated APIs

# 0.9.1
* Add missing require for 'tempfile'
* Update generated APIs

# 0.9
* Force the use of alt=json for the groups settings API
* Small tweaks to some calendar API and licensing API method names

# 0.9.0.pre5
* Change the default HTTP adapter to HTTPClient due to broken connections with long running uploads with Net::HTTP
* No longer breaks Object#hash behavior, restores compatibility with Padrino
* No longer omit falsey values (0, false, etc) in query parameters
* Updated error messages to include the detailed/human friendly message
* Allow Tempfile as an upload source
* Updated samples for various APIs

# 0.9.0.pre4
* (Breaking change) Updated name method name generation for improved
  consistency, some services may have changed.
* Updated generated APIs
* Fix streaming downloads with redirects
* No longer swallow exceptions raised in blocks
* Preserve query parameters in URLs when using `http()` for generic requests
* Avoid masking errors caused by retries with resumable uploads
* Deprecating the authorization support under Google::APIClient. Equivalent
  functionality is now available in google-auth-library-ruby. These will
  be removed in the 0.9 release.

# 0.9.0.pre3
* (Breaking change) Update method signatures to include required query
  parameters in the list of non-keyword args

# 0.9.0.pre2
* Add raw HTTP status code & body to errors
* Allow signet options to be passed in InstalledAppFlow.authorize
* Update DateTime serialization to include milliseconds

# 0.9.0.pre1
* WARNING: Please see [MIGRATING](MIGRATING.md) for important information.
* API classes are now generated ahead of time instead of at runtime.
* Drop support for Ruby versions < 2.0
* Switch from Faraday to Hurley for HTTP client

# 0.8.6
* Use discovered 'rootUrl' as base URI for services
* Respect discovered methods with colons in path

# 0.8.5
* Corrects the regression Rails 4 support in the 0.8.4 release.

# 0.8.4
* Fixes a file permission issues with the 0.8.3 release
* Fixes warnings when the library is used

# 0.8.3
* Adds support for authorization via Application Default Credentials.
# Adds support for tracking coverage on coveralls.io

# 0.8.2
* Fixes for file storage and missing cacerts file

# 0.8.1
* Fix logger in rails

# 0.8.0
* Refactored credential storage, added support for redis
* Update gem dependencies
* Fixed retry logic to allow for auth retries independent of the overall number of retries
* Added `:force_encoding` option to set body content encoding based on the Content-Type header
* Batch requests with the service interface now inherit the service's connection
* `register_discover_document` now returns the API instance
* Added `:proxy` option to set Faraday's HTTP proxy setting
* Added `:faraday_option` option to allow passthrough settings to Faraday connection
* Drop 1.8.x support
* This will be the last release with 1.9.x support

# 0.7.1
* Minor fix to update gem dependencies

# 0.7.0
* Remove CLI
* Support for automatic retires & backoff. Off by default, enable by setting `retries` on `APIClient`
* Experimental new interface (see `Google::APIClient::Service`)
* Fix warnings when using Faraday separately
* Support Google Compute Engine service accounts
* Enable gzip compression for responses
* Upgrade to Faraday 0.9.0. Resolves multiple issues with query parameter encodings.
* Use bundled root certificates for verifying SSL certificates
* Rewind media when retrying uploads

# 0.6.4
* Pin signet version to 0.4.x

# 0.6.3

* Update autoparse to 0.3.3 to fix cases where results aren't correctly parsed.
* Fix railtie loading for compatibility with rails < 3.0
* Fix refresh of access token when passing credentials as parameter to execute
* Fix URI processing in batch requests to allow query parameters

# 0.6.2

* Update signet to 0.4.6 to support server side continuation of postmessage
  auth flows.

# 0.6.1

* Fix impersonation with service accounts

# 0.6

* Apps strongly encouraged to set :application_name & :application_version when
  initializing a client
* JWT/service accounts moved to signet
* Added helper class for installed app OAuth flows, updated samples & CLI
* Initial logging support for client
* Fix PKCS12 loading on windows
* Allow disabling auto-refresh of OAuth 2 access tokens
* Compatibility with MultiJson >= 1.0.0 & Rails 3.2.8
* Fix for body serialization when body doesn't respond to to_json
* Remove OAuth 1.0 logins from CLI


# 0.5.0

* Beta candidate, potential incompatible changes with how requests are processed.
    * All requests should be made using execute() or execute!()
    * :api_method in request can no longer be a string
    * Deprecated ResumableUpload.send_* methods.
* Reduce memory utilization when uploading large files
* Automatic refresh of OAuth 2 credentials & retry of request when 401 errors
  are returned
* Simplify internal request processing.

# 0.4.7

* Added the ability to convert client secrets to an authorization object

# 0.4.6

* Backwards compatibility for MultiJson

# 0.4.5

* Updated Launchy dependency
* Updated Faraday dependency
* Updated Addressable dependency
* Updated Autoparse dependency
* Removed Sinatra development dependency

# 0.4.4

* Added batch execution
* Added service accounts
* Can now supply authorization on a per-request basis.

# 0.4.3

* Added media upload capabilities
* Support serializing OAuth credentials to client_secrets.json
* Fixed OS name/version string on JRuby

# 0.4.2

* Fixed incompatibility with Ruby 1.8.7

# 0.4.1

* Fixed ancestor checking issue when assigning Autoparse identifiers
* Renamed discovery methods to avoid collisions with some APIs
* Updated autoparse dependency to avoid JSON bug

# 0.4.0

* Replaced httpadapter gem dependency with faraday
* Replaced json gem dependency with multi_json
* Fixed /dev/null issues on Windows
* Repeated parameters now work

# 0.3.0

* Updated to use v1 of the discovery API
* Updated to use httpadapter 1.0.0
* Added OAuth 2 support to the command line tool
* Renamed some switches in the command line tool
* Added additional configuration capabilities
* Fixed a few deprecation warnings from dependencies
* Added gemspec to source control

# 0.2.0

* Updated to use v1 of the discovery API
* Updated to use httpadapter 1.0.0
* Added OAuth 2 support to the command line tool
* Renamed some switches in the command line tool
* Added additional configuration capabilities

# 0.1.3

* Added support for manual overrides of the discovery URI
* Added support for manual overrides of the API base
* Added support for xoauth_requestor_id

# 0.1.2

* Added support for two-legged OAuth
* Moved some development dependencies into runtime

# 0.1.1

* Substantial improvements to the command line interface

# 0.1.0

* Initial release
