require File.expand_path("lib/google/apis/redis_v1beta1/gem_version", __dir__)
gem_version = Google::Apis::RedisV1beta1::GEM_VERSION

Gem::Specification.new do |gem|
  gem.name = "google-apis-redis_v1beta1"
  gem.version = gem_version
  gem.authors = ["Google LLC"]
  gem.email = "googleapis-packages@google.com"
  gem.summary = "Simple REST client for Google Cloud Memorystore for Redis API V1beta1"
  gem.description =
      "This is the simple REST client for Google Cloud Memorystore for Redis API V1beta1." \
      " Simple REST clients are Ruby client libraries that provide access to" \
      " Google services via their HTTP REST API endpoints. These libraries are" \
      " generated and updated automatically based on the discovery documents" \
      " published by the service, and they handle most concerns such as" \
      " authentication, pagination, retry, timeouts, and logging. You can use" \
      " this client to access the Google Cloud Memorystore for Redis API, but note that some" \
      " services may provide a separate modern client that is easier to use."
  gem.homepage = "https://github.com/google/google-api-ruby-client"
  gem.license = "Apache-2.0"
  gem.metadata = {
    "bug_tracker_uri" => "https://github.com/googleapis/google-api-ruby-client/issues",
    "changelog_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/main/generated/google-apis-redis_v1beta1/CHANGELOG.md",
    "documentation_uri" => "https://googleapis.dev/ruby/google-apis-redis_v1beta1/v#{gem_version}",
    "source_code_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/main/generated/google-apis-redis_v1beta1"
  }

  gem.files = Dir.glob("lib/**/*.rb") + Dir.glob("*.md") + [".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 2.5'
  gem.add_runtime_dependency "google-apis-core", ">= 0.9.1", "< 2.a"
end
