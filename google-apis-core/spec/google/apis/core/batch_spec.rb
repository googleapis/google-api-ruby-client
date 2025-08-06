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
require 'google/apis/core/batch'
require 'google/apis/core/json_representation'

RSpec.describe Google::Apis::Core::BatchCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    command = Google::Apis::Core::BatchCommand.new(:post, 'https://www.googleapis.com/batch')
  end

  let(:get_command) { Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals/1') }

  let(:post_with_string_command) do
    command = Google::Apis::Core::HttpCommand.new(:post, 'https://www.googleapis.com/zoo/animals/2')
    command.body = 'Hello world'
    command.header['Content-Type'] = 'text/plain'
    command
  end

  let(:post_with_io_command) do
    command = Google::Apis::Core::HttpCommand.new(:post, 'https://www.googleapis.com/zoo/animals/3')
    command.body = StringIO.new(+'Goodbye!')
    command.header['Content-Type'] = 'text/plain'
    command
  end

  before(:example) do
    allow(SecureRandom).to receive(:uuid).and_return('ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f')
    allow(Digest::SHA1).to receive(:hexdigest).and_return('123abc')

    response = <<EOF
--batch123
Content-Type: application/http
Content-ID: <response-ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+0>

HTTP/1.1 200 OK
Content-Type: text/plain; charset=UTF-8

Hello
--batch123
Content-Type: application/http
Content-ID: <response-ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+2>

HTTP/1.1 500 Server Error
Content-Type: text/plain; charset=UTF-8

Error!
--batch123
Content-Type: application/http
Content-ID: <response-ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+1>

HTTP/1.1 200 OK
Content-Type: text/plain; charset=UTF-8

world
--batch123--
EOF
    stub_request(:post, 'https://www.googleapis.com/batch')
      .to_return(headers: { 'Content-Type' => 'multipart/mixed; boundary=batch123' }, body: response)
  end

  it 'should send content' do
    b = ->(_res, _err) {}
    command.add(get_command, &b)
    command.add(post_with_string_command, &b)
    command.add(post_with_io_command, &b)
    command.execute(client)

    expected_body = <<EOF.gsub(/\n/, "\r\n")
--123abc
Content-Type: application/http
Content-Id: <ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+0>
Content-Length: 58
Content-Transfer-Encoding: binary

GET /zoo/animals/1? HTTP/1.1
Host: www.googleapis.com


--123abc
Content-Type: application/http
Content-Id: <ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+1>
Content-Length: 96
Content-Transfer-Encoding: binary

POST /zoo/animals/2? HTTP/1.1
Content-Type: text/plain
Host: www.googleapis.com

Hello world
--123abc
Content-Type: application/http
Content-Id: <ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+2>
Content-Length: 93
Content-Transfer-Encoding: binary

POST /zoo/animals/3? HTTP/1.1
Content-Type: text/plain
Host: www.googleapis.com

Goodbye!
--123abc--

EOF
    expect(
      a_request(:post, 'https://www.googleapis.com/batch')
        .with(body: expected_body, headers: {"Content-Length" => expected_body.size.to_s})
    ).to have_been_made
  end

  it 'should send content with authorization header when set' do
    b = ->(_res, _err) {}
    signet_auth = object_double(Signet::OAuth2::Client.new).tap do |a|
      allow(a).to receive(:apply!) do |header|
        header['Authorization'] = 'Bearer a_token_value'
      end
    end
    command.add(get_command.tap { |c| c.options.authorization = 'oauthtoken' }, &b)
    command.add(post_with_string_command.tap { |c| c.options.authorization = signet_auth }, &b)
    command.add(post_with_io_command, &b)
    command.execute(client)

    expected_body = <<EOF.gsub(/\n/, "\r\n")
--123abc
Content-Type: application/http
Content-Id: <ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+0>
Content-Length: 92
Content-Transfer-Encoding: binary

GET /zoo/animals/1? HTTP/1.1
Authorization: Bearer oauthtoken
Host: www.googleapis.com


--123abc
Content-Type: application/http
Content-Id: <ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+1>
Content-Length: 133
Content-Transfer-Encoding: binary

POST /zoo/animals/2? HTTP/1.1
Content-Type: text/plain
Authorization: Bearer a_token_value
Host: www.googleapis.com

Hello world
--123abc
Content-Type: application/http
Content-Id: <ffe23d1b-e8f7-47f5-8c01-2a30cf8ecb8f+2>
Content-Length: 93
Content-Transfer-Encoding: binary

POST /zoo/animals/3? HTTP/1.1
Content-Type: text/plain
Host: www.googleapis.com

Goodbye!
--123abc--

EOF
    expect(a_request(:post, 'https://www.googleapis.com/batch').with(body: expected_body)).to have_been_made
  end

  it 'should send decode responses' do
    expect do |b|
      command.add(get_command) do |res, err|
        b.to_proc.call(1, res, err)
      end
      command.add(post_with_string_command) do |res, err|
        b.to_proc.call(2, res, err)
      end
      command.add(post_with_io_command) do |res, err|
        b.to_proc.call(3, res, err)
      end
      command.execute(client)
    end.to yield_successive_args([1, 'Hello', nil], [3, nil, an_instance_of(Google::Apis::ServerError)], [2, 'world', nil],)
  end

  it 'should raise error if batch is empty' do
    expect { command.execute(client) }.to raise_error(Google::Apis::BatchError)
  end
end
