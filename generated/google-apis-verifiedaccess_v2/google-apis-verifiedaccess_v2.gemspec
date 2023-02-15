require File.expand_path("lib/google/apis/verifiedaccess_v2/gem_version", __dir__)
gem_version = Google::Apis::VerifiedaccessV2::GEM_VERSION

Gem::Specification.new do |gem|
  gem.name = "google-apis-verifiedaccess_v2"
  gem.version = gem_version
  gem.authors = ["Google LLC"]
  gem.email = "googleapis-packages@google.com"
  gem.summary = "Simple REST client for Chrome Verified Access API V2"
  gem.description =
      "This is the simple REST client for Chrome Verified Access API V2." \
      " Simple REST clients are Ruby client libraries that provide access to" \
      " Google services via their HTTP REST API endpoints. These libraries are" \
      " generated and updated automatically based on the discovery documents" \
      " published by the service, and they handle most concerns such as" \
      " authentication, pagination, retry, timeouts, and logging. You can use" \
      " this client to access the Chrome Verified Access API, but note that some" \
      " services may provide a separate modern client that is easier to use."
  gem.homepage = "https://github.com/google/google-api-ruby-client"
  gem.license = "Apache-2.0"
  gem.metadata = {
    "bug_tracker_uri" => "https://github.com/googleapis/google-api-ruby-client/issues",
    "changelog_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/main/generated/google-apis-verifiedaccess_v2/CHANGELOG.md",
    "documentation_uri" => "https://googleapis.dev/ruby/google-apis-verifiedaccess_v2/v#{gem_version}",
    "source_code_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/main/generated/google-apis-verifiedaccess_v2"
  }

  gem.files = Dir.glob("lib/**/*.rb") + Dir.glob("*.md") + [".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 2.5'
  gem.add_runtime_dependency "google-apis-core", ">= 0.11.0", "< 2.a"
end
