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

RSpec.describe Google::Apis::Core::HttpCommand do
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
      command
    end

    let(:http_responses) { [ http_json_ok(%()) ] }

    it 'should serialize the request object' do
      command.execute(client)
      expect(connection.request.body).to be_json_eql(%({"value":"hello"}))
    end
  end

  context('with a JSON response') do
    let(:command) do
      command = Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.response_representation = representer_class
      command.response_class = model_class
      command
    end

    let(:http_responses) { [ http_json_ok(%({"value" : "hello"})) ] }

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

    let(:http_responses) { [ http_text_ok(%w(ignore me)) ] }

    it 'should return nil' do
      result = command.execute(client)
      expect(result).to be_nil
    end
  end


  context('with a field parameter') do
    let(:command) do
      command = Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.query['fields'] = ':items(:id, :long_name)'
      command
    end

    let(:http_responses) { [ http_json_ok(%()) ] }

    it 'should normalize fields params' do
      command.execute(client)
      expect(connection.request.query['fields']).to eql 'items(id, longName)'
    end
  end

  context('with a rate limit response') do
    let(:command) do
      Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    let(:http_responses) do
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
      [ http_json_error(403, json), http_json_ok(%({}))]
    end

    it 'should retry' do
      command.execute(client)
    end
  end
end