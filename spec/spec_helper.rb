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


if defined?(JRUBY_VERSION)
  puts 'Skipping coverage on JRuby'
else
  # set up coverage
  require 'simplecov'
  require 'coveralls'

  SimpleCov.formatters = [
    Coveralls::SimpleCov::Formatter,
    SimpleCov::Formatter::HTMLFormatter
  ]
  SimpleCov.start do
    add_filter '/spec/'
    add_filter '/generated/'
  end
end

require 'rspec'
require 'webmock/rspec'
require 'json_spec'
require 'logging'
require 'rspec/logging_helper'
require 'google/apis'
require 'google/apis/core/base_service'

# Configure RSpec to capture log messages for each test. The output from the
# logs will be stored in the @log_output variable. It is a StringIO instance.
RSpec.configure do |config|
  include RSpec::LoggingHelper
  config.include JsonSpec::Helpers
  config.include WebMock::API
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

RSpec.shared_context 'HTTP client' do
  let(:client) do
    Google::Apis::Core::BaseService.new('', '').client
  end
end

module TestHelpers
  include WebMock::API
  include WebMock::Matchers
end

# Enable retries for tests
Google::Apis::RequestOptions.default.retries = 5

# Temporarily patch WebMock to allow chunked responses for Net::HTTP
module Net
  module WebMockHTTPResponse
    def eval_chunk(chunk)
      puts chunk.is_a? Exception
      chunk if chunk.is_a?(String)
      chunk.read if chunk.is_a?(IO)
      chunk.call if chunk.is_a?(Proc)
      fail chunk if chunk.is_a?(Class)
      chunk
    end

    def read_body(dest = nil, &block)
      if !(defined?(@__read_body_previously_called).nil?) && @__read_body_previously_called
        return super
      end
      return @body if dest.nil? && block.nil?
      fail ArgumentError.new('both arg and block given for HTTP method') if dest && block
      return nil if @body.nil?

      dest ||= ::Net::ReadAdapter.new(block)
      body_parts = Array(@body)
      body_parts.each do |chunk|
        chunk = eval_chunk(chunk)
        dest << chunk
      end
      @body = dest
    ensure
      # allow subsequent calls to #read_body to proceed as normal, without our hack...
      @__read_body_previously_called = true
    end
  end
end

def run_integration_tests?
  ENV['GOOGLE_APPLICATION_CREDENTIALS'] && ENV['GOOGLE_PROJECT_ID']
end

