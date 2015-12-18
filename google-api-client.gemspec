# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google/apis/version'

Gem::Specification.new do |spec|
  spec.name          = 'google-api-client'
  spec.version       = Google::Apis::VERSION
  spec.authors       = ['Steven Bazyl', 'Tim Emiola', 'Sergio Gomes', 'Bob Aman']
  spec.email         = ['sbazyl@google.com']
  spec.summary       = %q{Client for accessing Google APIs}
  spec.homepage      = 'https://github.com/google/google-api-ruby-client'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib', 'generated', 'third_party']

  spec.add_runtime_dependency 'representable', '~> 2.3.0'
  spec.add_runtime_dependency 'multi_json', '~> 1.11'
  spec.add_runtime_dependency 'retriable', '~> 2.0'
  spec.add_runtime_dependency 'activesupport', '>= 3.2'
  spec.add_runtime_dependency 'addressable', '~> 2.3'
  spec.add_runtime_dependency 'mime-types', '>= 1.6'
  spec.add_runtime_dependency 'hurley', '~> 0.1'
  spec.add_runtime_dependency 'googleauth', '~> 0.5'
  spec.add_runtime_dependency 'thor', '~> 0.19'
  spec.add_runtime_dependency 'httpclient', '~> 2.7'
  spec.add_runtime_dependency 'memoist', '~> 0.11'
end
