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
require 'google/apis/core/upload'
require 'google/apis/core/json_representation'
require 'hurley/test'

# TODO: JSON Response decoding
# TODO: Upload from IO
# TODO: Upload from file

RSpec.describe Google::Apis::Core::RawUploadCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    command = Google::Apis::Core::RawUploadCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
    command.upload_source = StringIO.new('Hello world')
    command.upload_content_type = 'text/plain'
    command
  end

  let(:http_responses) { [ http_text_ok(%(Hello world)) ] }

  it 'should send content' do
    command.execute(client)
    expect(connection.request.body.read).to eql('Hello world')
  end


  it 'should send upload protocol' do
    command.execute(client)
    expect(connection.request.header['X-Goog-Upload-Protocol']).to eql('raw')
  end
end


RSpec.describe Google::Apis::Core::MultipartUploadCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    command = Google::Apis::Core::MultipartUploadCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
    command.upload_source = StringIO.new('Hello world')
    command.upload_content_type = 'text/plain'
    command.body = 'metadata'
    command
  end

  let(:http_responses) { [ http_text_ok(%(Hello world)) ] }

  it 'should send content' do
    response = <<EOF
--RubyApiClientUpload
Content-Type: application/json

metadata
--RubyApiClientUpload
Content-Length: 11
Content-Type: text/plain
Content-Transfer-Encoding: binary

Hello world
--RubyApiClientUpload--

EOF
    command.execute(client)
    expect(connection.request.body.read.gsub("\r", '')).to eql response
  end


  it 'should send upload protocol' do
    command.execute(client)
    expect(connection.request.header['X-Goog-Upload-Protocol']).to eql('multipart')
  end
end

RSpec.describe Google::Apis::Core::ResumableUploadCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    command = Google::Apis::Core::ResumableUploadCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
    command.upload_source = StringIO.new('Hello world')
    command.upload_content_type = 'text/plain'
    command
  end

  context 'with uninterrupted upload' do
    let(:http_responses) { [ [200, {'X-Goog-Upload-Status' => 'active'}, [] ],
                             [200, {'X-Goog-Upload-Status' => 'final'}, %(OK) ]
    ]}

    it 'should send upload protocol' do
      command.execute(client)
      expect(connection.request.header['X-Goog-Upload-Protocol']).to eql('resumable')
    end

    it 'should send start command' do
      command.execute(client)
      expect(connection.request.header['X-Goog-Upload-Command']).to eql('start')
    end

    it 'should send upload command' do
      command.execute(client)
      expect(connection.requests[1].header['X-Goog-Upload-Command']).to match /upload/
    end

    it 'should send upload content' do
      command.execute(client)
      expect(connection.requests[1].body.read).to eql 'Hello world'
    end
  end

  context 'with interruption' do
    let(:http_responses) { [ [200, {'X-Goog-Upload-Status' => 'active'}, [] ],
                             http_text_error(500),
                             [200, {'X-Goog-Upload-Status' => 'active', 'X-Goog-Upload-Size-Received' => 6}, [] ],
                             [200, {'X-Goog-Upload-Status' => 'final'}, %(OK) ]
    ]}

    it 'should send remaining upload content after failure' do
      command.execute(client)
      expect(connection.requests[3].body.read).to eql 'world'
    end
  end

  context 'with cancelled upload' do
    let(:http_responses) { [ [200, {'X-Goog-Upload-Status' => 'active'}, [] ],
                             http_text_error(500),
                             [200, {'X-Goog-Upload-Status' => 'cancelled'}, [] ]
    ]}

    it 'should raise error' do
      expect { command.execute(client) }.to raise_error Google::Apis::ClientError
    end
  end
end
