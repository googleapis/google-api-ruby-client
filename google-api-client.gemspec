# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{google-api-client}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bob Aman"]
  s.date = %q{2012-01-27}
  s.default_executable = %q{google-api}
  s.description = %q{The Google API Ruby Client makes it trivial to discover and access supported
APIs.
}
  s.email = %q{bobaman@google.com}
  s.executables = ["google-api"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["lib/google", "lib/google/api_client", "lib/google/api_client/discovery", "lib/google/api_client/discovery/api.rb", "lib/google/api_client/discovery/method.rb", "lib/google/api_client/discovery/resource.rb", "lib/google/api_client/discovery/schema.rb", "lib/google/api_client/discovery.rb", "lib/google/api_client/environment.rb", "lib/google/api_client/errors.rb", "lib/google/api_client/reference.rb", "lib/google/api_client/result.rb", "lib/google/api_client/version.rb", "lib/google/api_client.rb", "lib/google/inflection.rb", "spec/google", "spec/google/api_client", "spec/google/api_client/discovery_spec.rb", "spec/google/api_client_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/gem.rake", "tasks/git.rake", "tasks/metrics.rake", "tasks/rdoc.rake", "tasks/spec.rake", "tasks/wiki.rake", "tasks/yard.rake", "CHANGELOG.md", "LICENSE", "Rakefile", "README.md", "bin/google-api"]
  s.homepage = %q{http://code.google.com/p/google-api-ruby-client/}
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Package Summary}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<signet>, ["~> 0.3.0"])
      s.add_runtime_dependency(%q<addressable>, ["~> 2.2.3"])
      s.add_runtime_dependency(%q<autoparse>, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.7.0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<extlib>, [">= 0.9.15"])
      s.add_runtime_dependency(%q<launchy>, [">= 2.0.0"])
      s.add_development_dependency(%q<sinatra>, [">= 1.2.0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.2.9"])
      s.add_development_dependency(%q<rcov>, [">= 0.9.9"])
      s.add_development_dependency(%q<diff-lcs>, [">= 1.1.2"])
    else
      s.add_dependency(%q<signet>, ["~> 0.3.0"])
      s.add_dependency(%q<addressable>, ["~> 2.2.3"])
      s.add_dependency(%q<autoparse>, ["~> 0.2.0"])
      s.add_dependency(%q<faraday>, ["~> 0.7.0"])
      s.add_dependency(%q<multi_json>, [">= 1.0.0"])
      s.add_dependency(%q<extlib>, [">= 0.9.15"])
      s.add_dependency(%q<launchy>, [">= 2.0.0"])
      s.add_dependency(%q<sinatra>, [">= 1.2.0"])
      s.add_dependency(%q<rake>, [">= 0.9.0"])
      s.add_dependency(%q<rspec>, ["~> 1.2.9"])
      s.add_dependency(%q<rcov>, [">= 0.9.9"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<signet>, ["~> 0.3.0"])
    s.add_dependency(%q<addressable>, ["~> 2.2.3"])
    s.add_dependency(%q<autoparse>, ["~> 0.2.0"])
    s.add_dependency(%q<faraday>, ["~> 0.7.0"])
    s.add_dependency(%q<multi_json>, [">= 1.0.0"])
    s.add_dependency(%q<extlib>, [">= 0.9.15"])
    s.add_dependency(%q<launchy>, [">= 2.0.0"])
    s.add_dependency(%q<sinatra>, [">= 1.2.0"])
    s.add_dependency(%q<rake>, [">= 0.9.0"])
    s.add_dependency(%q<rspec>, ["~> 1.2.9"])
    s.add_dependency(%q<rcov>, [">= 0.9.9"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
  end
end
