#!/usr/bin/env ruby

# RUN
#   ruby examples/buzz.rb

root_dir = File.expand_path("../../..", __FILE__)
lib_dir = File.expand_path("./lib", root_dir)

$LOAD_PATH.unshift(lib_dir)
$LOAD_PATH.uniq!

require 'rubygems'
begin
  require 'signet/oauth_1/client'
  require 'google/api_client'
rescue LoadError
  STDERR.puts "Missing dependencies."
  STDERR.puts "sudo gem install signet google-api-client"
  exit(1)
end

client = Google::APIClient.new(:service => 'buzz')
response = client.execute(
  'chili.activities.list',
  'userId' => 'googlebuzz', 'scope' => '@public', 'alt' => 'json', 'pp' => '1'
)
status, headers, body = response
puts body
exit(0)
