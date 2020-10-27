lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google/apis/version'

Gem::Specification.new do |gem|
  gem.name          = 'google-api-client'
  gem.version       = Google::Apis::VERSION
  gem.authors       = ['Steven Bazyl', 'Tim Emiola', 'Sergio Gomes', 'Bob Aman']
  gem.email         = ['sbazyl@google.com']
  gem.summary       = 'Client for accessing Google APIs'
  gem.homepage      = 'https://github.com/google/google-api-ruby-client'
  gem.license       = 'Apache-2.0'
  gem.metadata      = {
    "documentation_uri" => "https://googleapis.dev/ruby/google-api-client/v#{Google::Apis::VERSION}"
  }

  gem.files         = `git ls-files -z`
                      .split("\x0")
                      .reject { |f| f.match(%r{^(spec|script)/|^api_names_out|synth\.metadata}) }

  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.require_paths = %w[lib generated]

  gem.required_ruby_version = '>= 2.4'

  gem.add_runtime_dependency 'representable', '~> 3.0'
  gem.add_runtime_dependency 'retriable', '>= 2.0', '< 4.0'
  gem.add_runtime_dependency 'addressable', '~> 2.5', '>= 2.5.1'
  gem.add_runtime_dependency 'mini_mime', '~> 1.0'
  gem.add_runtime_dependency 'signet', '~> 0.12'
  gem.add_runtime_dependency 'googleauth', '~> 0.9'
  gem.add_runtime_dependency 'httpclient', '>= 2.8.1', '< 3.0'
  gem.add_runtime_dependency 'rexml'
  gem.add_development_dependency 'thor', '~> 0.19'
  gem.add_development_dependency 'activesupport', '>= 4.2', '< 5.1'
end
