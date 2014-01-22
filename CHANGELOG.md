# 0.7.0
* Remove CLI
* SUpport for automatic retires & backoff. Off by default, enable by setting `retries` on `APIClient`
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
