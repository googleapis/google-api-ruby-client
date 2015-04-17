source 'https://rubygems.org'

# Specify your gem's dependencies in google-apis.gemspec
gemspec

platforms :jruby do
  group :development do
  	gem 'jruby-openssl'
  end
end

platforms :ruby do
  group :development do
    gem 'yard', '~> 0.8'
    gem 'redcarpet', '~> 3.2'
    gem 'github-markup', '~> 1.3'
  end
end

if ENV['RAILS_VERSION']
  gem 'rails', ENV['RAILS_VERSION']
end
