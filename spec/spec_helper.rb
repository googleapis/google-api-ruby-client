# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

SPEC_DIR = File.expand_path(File.dirname(__FILE__))
ROOT_DIR = File.expand_path(File.join(SPEC_DIR, '..'))
LIB_DIR = File.expand_path(File.join(ROOT_DIR, 'lib'))
GENERATED_DIR = File.expand_path(File.join(ROOT_DIR, 'generated'))
FIXTURES_DIR = File.expand_path(File.join(SPEC_DIR, 'fixtures'))

$LOAD_PATH.unshift(SPEC_DIR)
$LOAD_PATH.unshift(LIB_DIR)
$LOAD_PATH.unshift(GENERATED_DIR)
$LOAD_PATH.uniq!


# set up coverage
require 'simplecov'
require 'coveralls'

SimpleCov.formatters = [
  Coveralls::SimpleCov::Formatter,
  SimpleCov::Formatter::HTMLFormatter
]

SimpleCov.start do
  add_filter "/spec/"
  add_filter "/generated/"
end

require 'rspec'
require 'json_spec'
require 'logging'
require 'rspec/logging_helper'
require 'google/apis'
require 'hurley'

# Configure RSpec to capture log messages for each test. The output from the
# logs will be stored in the @log_output variable. It is a StringIO instance.
RSpec.configure do |config|
  include RSpec::LoggingHelper
  config.include JsonSpec::Helpers
  config.capture_log_messages

  Google::Apis.logger.level = Logger::DEBUG
end

[JsonSpec::Matchers::BeJsonEql,
 JsonSpec::Matchers::IncludeJson,
 JsonSpec::Matchers::HaveJsonType,
 JsonSpec::Matchers::HaveJsonSize,
 JsonSpec::Matchers::HaveJsonPath].each do |klass|
  klass.send(:alias_method, :===, :matches?)
end

class TestConnection
  attr_reader :requests
  def initialize(calls)
    @responses = calls
    @requests = []
  end

  def request
    @requests.first
  end

  def call(request)
    @requests << request
    status, header, body = @responses.shift
    Hurley::Response.new(request, status, Hurley::Header.new(header)) do |res|
      Array(body).each do |chunk|
        chunk.call(request, res) if chunk.respond_to?(:call)
        res.receive_body(chunk)
      end
    end
  end
end

RSpec.shared_context 'HTTP client' do
  let(:client) do
    client = Hurley::Client.new
    client.request_options.query_class = Hurley::Query::Flat
    client.connection = connection
    client
  end

  let(:connection) do
    TestConnection.new(http_responses)
  end
end

module TestHelpers

  def http_json_ok(json)
    [200, {'Content-Type' => 'application/json'}, json]
  end

  def http_json_error(status, json)
    [status, {'Content-Type' => 'application/json'}, json]
  end
  def http_text_ok(text)
    [200, {'Content-Type' => 'text/plain'}, text]
  end

  def http_text_error(status)
    [status, {'Content-Type' => 'text/plain'}, sprintf('Status code: %s', status)]
  end
end
