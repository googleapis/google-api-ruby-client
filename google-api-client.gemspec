# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "google-api-client"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bob Aman", "Steve Bazyl"]
  s.date = "2013-06-03"
  s.description = "The Google API Ruby Client makes it trivial to discover and access supported\nAPIs.\n"
  s.email = "sbazyl@google.com"
  s.executables = ["google-api"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["lib/cacerts.pem", "lib/compat", "lib/compat/multi_json.rb", "lib/google", "lib/google/api_client", "lib/google/api_client.rb", "lib/google/api_client/auth", "lib/google/api_client/auth/file_storage.rb", "lib/google/api_client/auth/installed_app.rb", "lib/google/api_client/auth/jwt_asserter.rb", "lib/google/api_client/auth/key_utils.rb", "lib/google/api_client/auth/pkcs12.rb", "lib/google/api_client/batch.rb", "lib/google/api_client/client_secrets.rb", "lib/google/api_client/discovery", "lib/google/api_client/discovery.rb", "lib/google/api_client/discovery/api.rb", "lib/google/api_client/discovery/media.rb", "lib/google/api_client/discovery/method.rb", "lib/google/api_client/discovery/resource.rb", "lib/google/api_client/discovery/schema.rb", "lib/google/api_client/environment.rb", "lib/google/api_client/errors.rb", "lib/google/api_client/logging.rb", "lib/google/api_client/media.rb", "lib/google/api_client/railtie.rb", "lib/google/api_client/reference.rb", "lib/google/api_client/request.rb", "lib/google/api_client/result.rb", "lib/google/api_client/service_account.rb", "lib/google/api_client/version.rb", "lib/google/inflection.rb", "spec/fixtures", "spec/fixtures/files", "spec/fixtures/files/privatekey.p12", "spec/fixtures/files/sample.txt", "spec/fixtures/files/secret.pem", "spec/google", "spec/google/api_client", "spec/google/api_client/batch_spec.rb", "spec/google/api_client/discovery_spec.rb", "spec/google/api_client/media_spec.rb", "spec/google/api_client/result_spec.rb", "spec/google/api_client/service_account_spec.rb", "spec/google/api_client_spec.rb", "spec/spec_helper.rb", "tasks/gem.rake", "tasks/git.rake", "tasks/metrics.rake", "tasks/spec.rake", "tasks/wiki.rake", "tasks/yard.rake", "CHANGELOG.md", "CONTRIB.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "bin/google-api"]
  s.homepage = "https://github.com/google/google-api-ruby-client"
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Package Summary"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<signet>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<addressable>, [">= 2.3.2"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 2.1.0"])
      s.add_runtime_dependency(%q<autoparse>, [">= 0.3.3"])
      s.add_runtime_dependency(%q<faraday>, [">= 0.9.0.rc5"])
      s.add_runtime_dependency(%q<multi_json>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<extlib>, [">= 0.9.15"])
      s.add_runtime_dependency(%q<jwt>, [">= 0.1.5"])
      s.add_runtime_dependency(%q<launchy>, [">= 2.1.1"])
      s.add_development_dependency(%q<rake>, [">= 0.9.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.11.0"])
    else
      s.add_dependency(%q<signet>, [">= 0.5.0"])
      s.add_dependency(%q<addressable>, [">= 2.3.2"])
      s.add_dependency(%q<uuidtools>, [">= 2.1.0"])
      s.add_dependency(%q<autoparse>, [">= 0.3.3"])
      s.add_dependency(%q<faraday>, [">= 0.9.0.rc5"])
      s.add_dependency(%q<multi_json>, [">= 1.0.0"])
      s.add_dependency(%q<extlib>, [">= 0.9.15"])
      s.add_dependency(%q<jwt>, [">= 0.1.5"])
      s.add_dependency(%q<launchy>, [">= 2.1.1"])
      s.add_dependency(%q<rake>, [">= 0.9.0"])
      s.add_dependency(%q<rspec>, [">= 2.11.0"])
    end
  else
    s.add_dependency(%q<signet>, [">= 0.5.0"])
    s.add_dependency(%q<addressable>, [">= 2.3.2"])
    s.add_dependency(%q<uuidtools>, [">= 2.1.0"])
    s.add_dependency(%q<autoparse>, [">= 0.3.3"])
    s.add_dependency(%q<faraday>, [">= 0.9.0.rc5"])
    s.add_dependency(%q<multi_json>, [">= 1.0.0"])
    s.add_dependency(%q<extlib>, [">= 0.9.15"])
    s.add_dependency(%q<jwt>, [">= 0.1.5"])
    s.add_dependency(%q<launchy>, [">= 2.1.1"])
    s.add_dependency(%q<rake>, [">= 0.9.0"])
    s.add_dependency(%q<rspec>, [">= 2.11.0"])
  end
end
