# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "google-api-client"
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bob Aman", "Steve Bazyl"]
  s.date = "2014-01-23"
  s.description = "The Google API Ruby Client makes it trivial to discover and access supported\nAPIs.\n"
  s.email = "sbazyl@google.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["lib/cacerts.pem", "lib/compat", "lib/compat/multi_json.rb", "lib/google", "lib/google/api_client", "lib/google/api_client.rb", "lib/google/api_client/auth", "lib/google/api_client/auth/compute_service_account.rb", "lib/google/api_client/auth/file_storage.rb", "lib/google/api_client/auth/installed_app.rb", "lib/google/api_client/auth/jwt_asserter.rb", "lib/google/api_client/auth/key_utils.rb", "lib/google/api_client/auth/pkcs12.rb", "lib/google/api_client/batch.rb", "lib/google/api_client/client_secrets.rb", "lib/google/api_client/discovery", "lib/google/api_client/discovery.rb", "lib/google/api_client/discovery/api.rb", "lib/google/api_client/discovery/media.rb", "lib/google/api_client/discovery/method.rb", "lib/google/api_client/discovery/resource.rb", "lib/google/api_client/discovery/schema.rb", "lib/google/api_client/environment.rb", "lib/google/api_client/errors.rb", "lib/google/api_client/gzip.rb", "lib/google/api_client/logging.rb", "lib/google/api_client/media.rb", "lib/google/api_client/railtie.rb", "lib/google/api_client/reference.rb", "lib/google/api_client/request.rb", "lib/google/api_client/result.rb", "lib/google/api_client/service", "lib/google/api_client/service.rb", "lib/google/api_client/service/batch.rb", "lib/google/api_client/service/request.rb", "lib/google/api_client/service/resource.rb", "lib/google/api_client/service/result.rb", "lib/google/api_client/service/simple_file_store.rb", "lib/google/api_client/service/stub_generator.rb", "lib/google/api_client/service_account.rb", "lib/google/api_client/version.rb", "lib/google/inflection.rb", "spec/fixtures", "spec/fixtures/files", "spec/fixtures/files/privatekey.p12", "spec/fixtures/files/sample.txt", "spec/fixtures/files/secret.pem", "spec/google", "spec/google/api_client", "spec/google/api_client/batch_spec.rb", "spec/google/api_client/discovery_spec.rb", "spec/google/api_client/gzip_spec.rb", "spec/google/api_client/media_spec.rb", "spec/google/api_client/request_spec.rb", "spec/google/api_client/result_spec.rb", "spec/google/api_client/service_account_spec.rb", "spec/google/api_client/service_spec.rb", "spec/google/api_client/simple_file_store_spec.rb", "spec/google/api_client_spec.rb", "spec/spec_helper.rb", "tasks/gem.rake", "tasks/git.rake", "tasks/metrics.rake", "tasks/spec.rake", "tasks/wiki.rake", "tasks/yard.rake", "CHANGELOG.md", "CONTRIBUTING.md", "Gemfile", "LICENSE", "README.md", "Rakefile"]
  s.homepage = "https://github.com/google/google-api-ruby-client"
  s.licenses = ["Apache 2.0"]
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Package Summary"
  s.required_ruby_version = '>= 1.9.3'

  s.add_runtime_dependency('signet', '>= 0.5.0')
  s.add_runtime_dependency('addressable', '>= 2.3.2')
  s.add_runtime_dependency('autoparse', '>= 0.3.3')
  s.add_runtime_dependency('faraday', '>= 0.9.0')
  s.add_runtime_dependency('multi_json', '>= 1.0.0')
  s.add_runtime_dependency('activesupport', '>= 3.2.0')
  s.add_runtime_dependency('jwt', '>= 0.1.5')
  s.add_runtime_dependency('retriable', '~> 1.4')
  s.add_runtime_dependency('launchy', '>= 2.1.1')
  s.add_development_dependency('rake', '>= 10.0.0')
  s.add_development_dependency('rspec', '>= 3.1.0')

end
