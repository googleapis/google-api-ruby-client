lib_dir = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib_dir)
$LOAD_PATH.uniq!

require 'rubygems'
require 'rake'

require File.join(File.dirname(__FILE__), 'lib/google/api_client', 'version')

PKG_DISPLAY_NAME   = 'Google API Client'
PKG_NAME           = PKG_DISPLAY_NAME.downcase.gsub(/\s/, '-')
PKG_VERSION        = Google::APIClient::VERSION::STRING
PKG_FILE_NAME      = "#{PKG_NAME}-#{PKG_VERSION}"
PKG_HOMEPAGE       = 'https://github.com/google/google-api-ruby-client'

RELEASE_NAME       = "REL #{PKG_VERSION}"

PKG_AUTHOR         = ["Bob Aman", "Steve Bazyl"]
PKG_AUTHOR_EMAIL   = "sbazyl@google.com"
PKG_SUMMARY        = 'Package Summary'
PKG_DESCRIPTION    = <<-TEXT
The Google API Ruby Client makes it trivial to discover and access supported
APIs.
TEXT

list = FileList[
    'lib/**/*', 'spec/**/*', 'vendor/**/*',
    'tasks/**/*', 'website/**/*',
    '[A-Z]*', 'Rakefile'
].exclude(/[_\.]git$/)
(open(".gitignore") { |file| file.read }).split("\n").each do |pattern|
  list.exclude(pattern)
end
PKG_FILES = list

RCOV_ENABLED = !!(RUBY_PLATFORM != 'java' && RUBY_VERSION =~ /^1\.8/)
if RCOV_ENABLED
  task :default => 'spec:rcov'
else
  task :default => 'spec'
end

WINDOWS = (RUBY_PLATFORM =~ /mswin|win32|mingw|bccwin|cygwin/) rescue false
SUDO = WINDOWS ? '' : ('sudo' unless ENV['SUDOLESS'])

Dir['tasks/**/*.rake'].each { |rake| load rake }
