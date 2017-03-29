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

require 'spec_helper'
require 'google/apis/core/api_command'
require 'google/apis/core/json_representation'
require 'hurley/test'

RSpec.describe Google::Apis::Core::ApiCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:model_class) do
    Class.new do
      attr_accessor :value
    end
  end

  let(:representer_class) do
    Class.new(Google::Apis::Core::JsonRepresentation) do
      property :value
    end
  end

  context('with a request body') do
    let(:command) do
      request = model_class.new
      request.value = 'hello'
      command = Google::Apis::Core::ApiCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
      command.request_representation = representer_class
      command.request_object = request
      command.query['a'] = 'b'
      command
    end

    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals?a=b')
        .to_return(headers: { 'Content-Type' => 'application/json' }, body: %({}))
    end

    it 'should serialize the request object' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?a=b').with do |req|
        be_json_eql(%({"value":"hello"})).matches?(req.body)
      end).to have_been_made
    end

    it 'should not form encode query parameters when body expected but nil' do
      command.query['a'] = 'b'
      command.request_object = nil
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?a=b').with(body: nil)).to have_been_made
    end
  end

  context('with a JSON response') do
    let(:command) do
      command = Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.response_representation = representer_class
      command.response_class = model_class
      command
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(headers: { 'Content-Type' => 'application/json' }, body: %({"value" : "hello"}))
    end

    it 'should return a model instance' do
      result = command.execute(client)
      expect(result).to be_kind_of(model_class)
    end

    it 'should return a populated object' do
      result = command.execute(client)
      expect(result.value).to eql 'hello'
    end
  end

  context('with an invalid content-type response') do
    let(:command) do
      command = Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.response_representation = representer_class
      command.response_class = model_class
      command
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(headers: { 'Content-Type' => 'text/plain' }, body: %(Ignore me))
    end

    it 'should return nil' do
      result = command.execute(client)
      expect(result).to be_nil
    end
  end


  context('with a field parameter') do
    let(:command) do
      command = Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.query['fields'] = ':items(:id, :long_name, :a_really_long_name), shouldBeLeftAlone '
      command
    end

    before(:example) do
      stub_request(:get, /.*/)
        .to_return(headers: { 'Content-Type' => 'application/json' }, body: %({}))
    end

    it 'should normalize fields params' do
      command.execute(client)
      expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
        .with(query: { 'fields' => 'items(id, longName, aReallyLongName), shouldBeLeftAlone ' })) .to have_been_made
    end
  end

  context('with a rate limit response') do
    let(:command) do
      Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      json = <<EOF
{
 "error": {
  "errors": [
   {
    "domain": "global",
    "reason": "rateLimitExceeded",
    "message": "Rate limit exceeded"
   }
  ],
  "code": 403,
  "message": "Rate limit exceeded"
 }
}
EOF
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [403, 'Rate Limit Exceeded'], headers: { 'Content-Type' => 'application/json' }, body: json)
        .to_return(headers: { 'Content-Type' => 'application/json' }, body: %({}))
    end

    it 'should retry' do
      command.execute(client)
      expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')).to have_been_made.times(2)
    end
  end

  context('with a project not linked response') do
    let(:command) do
      Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      json = <<EOF
{
 "error": {
  "errors": [
   {
    "domain": "global",
    "reason": "projectNotLinked",
    "message": "The project id used to call the Google Play Developer API has not been linked in the Google Play Developer Console."
   }
  ],
  "code": 403,
  "message": "The project id used to call the Google Play Developer API has not been linked in the Google Play Developer Console."
 }
}
EOF
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [403, 'The project id used to call the Google Play Developer API has not been linked in the Google Play Developer Console.'], headers: {
          'Content-Type' => 'application/json'
        }, body: json)
        .to_return(headers: { 'Content-Type' => 'application/json' }, body: %({}))
    end

    it 'should raise project not linked error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::ProjectNotLinkedError)
    end

    it 'should raise an error with the reason and message' do
      expect { command.execute(client) }.to raise_error(
        /projectNotLinked: The project id used to call the Google Play Developer API has not been linked in the Google Play Developer Console./)
    end
  end

  context('with a client error response') do
    let(:command) do
      Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      json = <<EOF
{
 "error": {
  "errors": [
   {
    "domain": "global",
    "reason": "timeRangeEmpty",
    "message": "The specified time range is empty."
   }
  ],
  "code": 400,
  "message": "The specified time range is empty."
 }
}
EOF
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [400, 'Bad Request'], headers: { 'Content-Type' => 'application/json' }, body: json)
    end

    it 'should raise client error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
    end

    it 'should raise an error with the reason and message' do
      expect { command.execute(client) }.to raise_error(
        /timeRangeEmpty: The specified time range is empty/)
    end
  end

  context('with an empty error body') do
    let(:command) do
      Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      json = %({})

      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [403, 'Rate Limit Exceeded'], headers: { 'Content-Type' => 'application/json' }, body: json)
    end

    it 'should raise client error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
    end

    it 'should use the default error message' do
      expect { command.execute(client) }.to raise_error(/Invalid request/)
    end
  end
end
