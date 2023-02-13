require File.expand_path("lib/google/apis/generator/version", __dir__)
gem_version = Google::Apis::Generator::VERSION

Gem::Specification.new do |gem|
  gem.name = "google-apis-generator"
  gem.version = gem_version
  gem.authors = ["Google LLC"]
  gem.email = "googleapis-packages@google.com"
  gem.summary = "Code generator for legacy Google REST clients"
  gem.homepage = "https://github.com/google/google-api-ruby-client"
  gem.license = "Apache-2.0"
  gem.metadata = {
    "bug_tracker_uri" => "https://github.com/googleapis/google-api-ruby-client/issues",
    "changelog_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/main/google-apis-generator/CHANGELOG.md",
    "documentation_uri" => "https://googleapis.dev/ruby/google-apis-generator/v#{gem_version}",
    "source_code_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/main/google-apis-generator"
  }

  gem.files = Dir.glob("lib/**/*.rb") + Dir.glob("lib/**/*.tmpl") + Dir.glob("bin/*") + Dir.glob("*.md") + [".yardopts"]
  gem.executables = ["generate-api"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.5"
  gem.add_runtime_dependency "activesupport", ">= 5.0"
  gem.add_runtime_dependency "gems", "~> 1.2"
  gem.add_runtime_dependency "google-apis-core", ">= 0.11.0", "< 2.a"
  gem.add_runtime_dependency "google-apis-discovery_v1", "~> 0.5"
  gem.add_runtime_dependency "thor", ">= 0.20", "< 2.a"
end
