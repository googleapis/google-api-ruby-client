require 'rubygems'
begin
  # We prefer to use the RDoc gem over the site version.
  gem 'rdoc'
rescue Gem::LoadError
end unless defined?(RDoc)

require 'rdoc/task'

namespace :doc do
  desc 'Generate RDoc documentation'
  RDoc::Task.new do |rdoc|
    rdoc.rdoc_dir = 'doc'
    rdoc.title    = "#{PKG_NAME}-#{PKG_VERSION} Documentation"
    rdoc.options << '--line-numbers' << 'cattr_accessor=object' <<
      '--charset' << 'utf-8'
    rdoc.template = "#{ENV['template']}.rb" if ENV['template']
    rdoc.rdoc_files.include('README.md', 'CHANGELOG', 'LICENSE')
    rdoc.rdoc_files.include('lib/**/*.rb')
  end

  desc 'Generate ri locally for testing'
  task :ri do
    sh 'rdoc --ri -o ri .'
  end

  desc 'Remove ri products'
  task :clobber_ri do
    rm_r 'ri' rescue nil
  end
end

task 'clobber' => ['doc:clobber_rdoc', 'doc:clobber_ri']
