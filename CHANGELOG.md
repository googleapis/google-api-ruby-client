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
