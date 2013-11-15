# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "google-api-client"
  s.version = "0.7.0.rc2"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bob Aman", "Steve Bazyl"]
  s.date = "2013-09-09"
  s.description = "The Google API Ruby Client makes it trivial to discover and access supported\nAPIs.\n"
  s.email = "sbazyl@google.com"
  s.executables = ["google-api"]
  s.extra_rdoc_files = ["README.md"]
  s.files  = `git ls-files`.split($/)
  s.homepage = "http://code.google.com/p/google-api-ruby-client/"
  s.licenses = ["Apache 2.0"]
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Package Summary"

  if s.respond_to? :specification_version then
    s.specification_version = 4

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
