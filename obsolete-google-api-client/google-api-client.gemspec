lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google/apis/version'

Gem::Specification.new do |gem|
  gem.name          = 'google-api-client'
  gem.version       = Google::Apis::VERSION
  gem.authors       = ['Steven Bazyl', 'Tim Emiola', 'Sergio Gomes', 'Bob Aman']
  gem.email         = ['sbazyl@google.com']
  gem.summary       = "DEPRECATED monolithic client for accessing Google APIs. THIS GEM IS NOT MAINTAINED. Instead, please install the gem corresponding to the specific service to use. For example, to use the Google Drive V3 client, install google-apis-drive_v3. For more information, see the FAQ in the OVERVIEW.md file or the YARD docs."
  gem.homepage      = 'https://github.com/google/google-api-ruby-client'
  gem.license       = 'Apache-2.0'

  gem.post_install_message = <<~MESSAGE

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    The google-api-client gem is DEPRECATED and will likely not be updated further.

    Instead, please install the gem corresponding to the specific service to use.
    For example, to use the Google Drive V3 client, install google-apis-drive_v3.
    For more information, see the FAQ in the OVERVIEW.md file or the YARD docs.
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  MESSAGE

  gem.files         = Dir.glob("lib/**/*") +
                      Dir.glob("generated/**/*.rb") +
                      Dir.glob("*.md") +
                      [".yardopts", "LICENSE"]

  gem.require_paths = %w[lib generated]

  gem.required_ruby_version = '>= 2.4'

  gem.add_runtime_dependency 'google-apis-core', '~> 0.1'
  gem.add_runtime_dependency 'google-apis-generator', '~> 0.1'
end
