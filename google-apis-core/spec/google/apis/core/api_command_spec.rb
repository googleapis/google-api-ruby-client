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

  let(:client_version) { "1.2.3" }
  let(:x_goog_api_client_value) { "gl-ruby/#{RUBY_VERSION} gdcl/#{client_version}" }

  context('with preparation') do
    let(:command) do
      Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals', client_version: client_version)
    end

    it 'should set X-Goog-Api-Client header if none is set' do
      command.prepare!
      expect(command.header['X-Goog-Api-Client']).to eql x_goog_api_client_value
    end

    it 'should append to x-goog-api-client header with case difference' do
      command.header['x-goog-api-client'] = "foo/1.2.3"
      command.prepare!
      expect(command.header['X-Goog-Api-Client']).to eql "foo/1.2.3 #{x_goog_api_client_value}"
    end

    it 'should append to multiple x-goog-api-client headers' do
      command.header['x-goog-api-client'] = "foo/1.2.3"
      command.header['X-Goog-Api-Client'] = "bar/4.5.6"
      command.prepare!
      expect(command.header['X-Goog-Api-Client']).to eql "foo/1.2.3 bar/4.5.6 #{x_goog_api_client_value}"
      expect(command.header['x-goog-api-client']).to be nil
    end

    it 'should override existing gl-ruby/ and gdcl/ clauses' do
      command.header['x-goog-api-client'] = "gl-ruby/0.0 foo/1.2.3"
      command.header['X-Goog-Api-Client'] = "bar/4.5.6 gdcl/0.0"
      command.prepare!
      expect(command.header['X-Goog-Api-Client']).to eql "foo/1.2.3 bar/4.5.6 #{x_goog_api_client_value}"
      expect(command.header['x-goog-api-client']).to be nil
    end

    it 'should not set the X-Goog-User-Project header if there is no quota_project' do
      command.prepare!
      expect(command.header['X-Goog-User-Project']).to be_nil
    end

    it 'should set the X-Goog-User-Project to the credentials quota_project' do
      command.options.authorization = OpenStruct.new quota_project_id: "b_project_id"
      command.prepare!
      expect(command.header['X-Goog-User-Project']).to eql "b_project_id"
    end

    it 'should set the X-Goog-User-Project to a custom quota_project in preference to credentials' do
      command.options.authorization = OpenStruct.new quota_project_id: "b_project_id"
      command.options.quota_project = "c_project_id"
      command.prepare!
      expect(command.header['X-Goog-User-Project']).to eql "c_project_id"
    end

    it "should set the gccl-invocation-id to a random UUID" do
      command.options.add_invocation_id_header = true
      command.prepare!
      expect(command.header["X-Goog-Api-Client"]).to include("gccl-invocation-id")
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

  context('with a raw request body') do
    let(:command) do
      request = model_class.new
      command = Google::Apis::Core::ApiCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
      command.request_representation = representer_class
      command.request_object = %({"value": "hello"})
      command.options.skip_serialization = true
      command
    end

    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals')
          .to_return(headers: { 'Content-Type' => 'application/json' }, body: %({}))
    end

    it 'should allow raw JSON if skip_serialization = true' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals').with do |req|
        be_json_eql(%({"value":"hello"})).matches?(req.body)
      end).to have_been_made
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

    it 'should return a raw JSON if skip_deserialization true' do
      command.options.skip_deserialization = true
      result = command.execute(client)
      expect(result).to eql %({"value" : "hello"})
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

  context('with v2 error messages') do
    let(:command) do
      cmd = Google::Apis::Core::ApiCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      cmd.options.api_format_version = 2
      cmd
    end

    before(:example) do
      json = <<EOF
{
  "error": {
    "code": 400,
    "message": "Illegal character ':' in log name",
    "status": "INVALID_ARGUMENT",
    "details": [
      {
        "@type": "type.googleapis.com/google.logging.v2.WriteLogEntriesPartialErrors",
        "logEntryErrors": {
          "0": {
            "code": 3,
            "message": "Illegal character ':' in log name"
          },
          "1": {
            "code": 7,
            "message": "User not authorized."
          }
        }
      }
    ]
  }
}
EOF

      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .with(headers: {'X-Goog-Api-Format-Version' => '2'})
        .to_return(status: [400, 'Invalid Argument'], headers: { 'Content-Type' => 'application/json' }, body: json)
    end

    it 'should raise client error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
    end

    it 'should raise an error with the reason and message' do
      expect { command.execute(client) }.to raise_error(
        /INVALID_ARGUMENT: Illegal character ':' in log name/)
    end
  end
end
