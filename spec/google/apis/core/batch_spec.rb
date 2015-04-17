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
require 'hurley/test'

RSpec.describe Google::Apis::Core::BatchCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    command = Google::Apis::Core::BatchCommand.new(:post, 'https://www.googleapis.com/batch')
  end

  let(:http_responses) do
    response = <<EOF
--batch123
Content-Type: application/http

HTTP/1.1 200 OK
Content-Type: text/plain; charset=UTF-8

Hello
--batch123
Content-Type: application/http

HTTP/1.1 200 OK
Content-Type: text/plain; charset=UTF-8

world
--batch123
Content-Type: application/http

HTTP/1.1 500 Server Error
Content-Type: text/plain; charset=UTF-8

Error!
--batch123--
EOF
    [ [200, {'Content-Type' => 'multipart/mixed; boundary=batch123'}, response ] ]
  end

  it 'should send content' do
    expect do |b|
      command.add(Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals/1'), &b)
      command.add(Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals/2'), &b)
      command.add(Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals/3'), &b)
      command.execute(client)
    end.to yield_successive_args(['Hello', nil], ['world', nil], [nil, an_instance_of(Google::Apis::ServerError)])
  end

end
