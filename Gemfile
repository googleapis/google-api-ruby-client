source :rubygems

gemspec

gem 'signet', '>= 0.4.1'
gem 'addressable', '>= 2.3.2'
gem 'uuidtools', '>= 2.1.0'
gem 'autoparse', '>= 0.3.2'
gem 'faraday', '~> 0.8.1'
gem 'multi_json', '>= 1.0.0'
gem 'extlib', '>= 0.9.15'
gem 'jwt', '~> 0.1.5'
gem 'jruby-openssl', :platforms => :jruby

group :development do
  gem 'launchy', '>= 2.1.1'
  gem 'yard'
  if File.exist?('/usr/bin/gcc-4.2')
    # Not a critically important gem to have around.
    # If it's not going to build, skip it.
    gem 'redcarpet'
  end
end

group :examples do
  gem 'sinatra'
end

group :test, :development do
  gem 'rake', '>= 0.9.0'
  gem 'rspec', '>= 2.11.0'
  gem 'rcov', '>= 0.9.9', :platform => :mri_18
end

gem 'idn', :platform => :mri_18
