source 'https://rubygems.org'

gemspec

gem 'signet', '>= 0.5.0'
gem 'addressable', '>= 2.3.2'
gem 'uuidtools', '>= 2.1.0'
gem 'autoparse', '>= 0.3.3'
gem 'faraday', '>= 0.9.0'
gem 'multi_json', '>= 1.0.0'
gem 'extlib', '>= 0.9.15'
gem 'jwt', '~> 0.1.5'
gem 'retriable', '>= 1.4'
gem 'jruby-openssl', :platforms => :jruby

group :development do
  gem 'launchy', '>= 2.1.1'
  gem 'yard'
  gem 'kramdown'
end


platforms :rbx do
  gem 'rubysl', '~> 2.0'
  gem 'psych'
end


group :examples do
  gem 'sinatra'
end

group :test, :development do
  gem 'json', '~> 1.7.7'
  gem 'rake', '>= 0.9.0'
  gem 'rspec', '>= 2.11.0'
  gem 'rcov', '>= 0.9.9', :platform => :mri_18
end


gem 'idn', :platform => :mri_18
