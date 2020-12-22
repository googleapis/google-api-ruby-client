#!/usr/bin/env ruby

require "fileutils"

DIR = File.dirname __dir__

def execute cmd
  puts cmd
  abort unless system cmd
end

Dir.chdir "google-api-client"

execute "bundle install"

if ARGV.empty?
  execute "echo a | bundle exec bin/generate-api gen generated --from-discovery --no-preferred-only --names=#{DIR}/api_names.yaml --names-out=#{DIR}/api_names_out.yaml"
elsif ARGV == ["--clean"] || ARGV == ["clean"]
  execute "bundle exec bin/generate-api gen generated --clean"
elsif ARGV.size == 2
  api, version = ARGV
  execute "echo a | bundle exec bin/generate-api gen generated --api=#{api}.#{version} --names=#{DIR}/api_names.yaml --names-out=#{DIR}/api_names_out.yaml"
else
  abort "Bad arguments: #{ARGV}"
end
