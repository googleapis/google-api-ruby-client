require File.expand_path("lib/google/apis/core/version", __dir__)

Gem::Specification.new do |gem|
  gem.name = "google-apis-core"
  gem.version = Google::Apis::Core::VERSION
  gem.authors = ["Google LLC"]
  gem.email = "googleapis-packages@google.com"
  gem.summary = "Common utility and base classes for legacy Google REST clients"
  gem.homepage = "https://github.com/google/google-api-ruby-client"
  gem.license = "Apache-2.0"
  gem.metadata = {
    "documentation_uri" => "https://googleapis.dev/ruby/google-apis-core/v#{Google::Apis::Core::VERSION}"
  }
  gem.files = Dir.glob("lib/**/*.rb") + Dir.glob("*.md") + [".yardopts", "LICENSE"]
  gem.require_paths = ["lib"]
  gem.required_ruby_version = '>= 2.4'

  gem.add_runtime_dependency "representable", "~> 3.0"
  gem.add_runtime_dependency "retriable", ">= 2.0", "< 4.0"
  gem.add_runtime_dependency "addressable", "~> 2.5", ">= 2.5.1"
  gem.add_runtime_dependency "mini_mime", "~> 1.0"
  gem.add_runtime_dependency "signet", "~> 0.12"
  gem.add_runtime_dependency "googleauth", "~> 0.9"
  gem.add_runtime_dependency "httpclient", ">= 2.8.1", "< 3.0"
  gem.add_runtime_dependency "rexml"
end
