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
require 'google/apis/core/download'
require 'google/apis/core/json_representation'
require 'hurley/test'

# TODO: File as download dest
# TODO: IO as download dest

RSpec.describe Google::Apis::Core::DownloadCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    Google::Apis::Core::DownloadCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
  end

  context 'with successful response' do

    let(:http_responses) { [ http_text_ok(%(Hello world)) ] }

    it 'should include the alt=media param' do
      command.execute(client)
      expect(connection.request.query['alt']).to eql 'media'
    end

    it 'should not include a range header' do
      command.execute(client)
      expect(connection.request.query['range']).to be_nil
    end

    it 'should receive content' do
      str_io = command.execute(client)
      expect(str_io.string).to eql 'Hello world'
    end
  end

  context 'with disconnects' do
    let(:http_responses) do
      [[ 200, {'Content-Type' => 'text/plain'}, [ 'Hello ', lambda { |*| fail Hurley::Timeout, 'timeout }'}] ],
       [ 200, {'Content-Type' => 'text/plain'}, 'world']
      ]
    end

    it 'should receive entire content' do
      str_io = command.execute(client)
      expect(str_io.string).to eql('Hello world')
    end

  end

end