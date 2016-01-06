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

RSpec.describe Google::Apis::Core::UploadIO do
  context 'from_file' do
    let(:upload_io) { Google::Apis::Core::UploadIO.from_file(file) }

    context 'with text file' do
      let(:file) { File.join(FIXTURES_DIR, 'files', 'test.txt') }
      it 'should infer content type from file' do
        expect(upload_io.content_type).to eql('text/plain')
      end

      it 'should allow overriding the mime type' do
        io = Google::Apis::Core::UploadIO.from_file(file, content_type: 'application/json')
        expect(io.content_type).to eql('application/json')
      end
    end

    context 'with unknown type' do
      let(:file) { File.join(FIXTURES_DIR, 'files', 'test.blah') }
      it 'should use the default mime type' do
        expect(upload_io.content_type).to eql('application/octet-stream')
      end

      it 'should allow overriding the mime type' do
        io = Google::Apis::Core::UploadIO.from_file(file, content_type: 'application/json')
        expect(io.content_type).to eql('application/json')
      end

      it 'should setup length of the stream' do
        upload_io = Google::Apis::Core::UploadIO.from_file(file)
        expect(upload_io.length).to eq File.size(file)
      end

    end
  end

  context 'from_io' do

    context 'with i/o stream' do
      let(:io) { StringIO.new 'Hello google' }

      it 'should setup default content-type' do
        upload_io = Google::Apis::Core::UploadIO.from_io(io)
        expect(upload_io.content_type).to eql Google::Apis::Core::UploadIO::OCTET_STREAM_CONTENT_TYPE
      end

      it 'should allow overring the mime type' do
        upload_io = Google::Apis::Core::UploadIO.from_io(io, content_type: 'application/x-gzip')
        expect(upload_io.content_type).to eq('application/x-gzip')
      end

      it 'should setup length of the stream' do
        upload_io = Google::Apis::Core::UploadIO.from_io(io)
        expect(upload_io.length).to eq 'Hello google'.length
      end
    end

  end
end

RSpec.describe Google::Apis::Core::RawUploadCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    command = Google::Apis::Core::RawUploadCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
    command.upload_source = file
    command.upload_content_type = 'text/plain'
    command
  end

  shared_examples 'should upload' do
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals').to_return(body: '')
    end

    it 'should send content' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with(body: "Hello world\n")).to have_been_made
    end

    it 'should send upload protocol' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with { |req| req.headers['X-Goog-Upload-Protocol'] == 'raw' }).to have_been_made
    end

    it 'should send content-type header' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with { |req| req.headers['X-Goog-Upload-Header-Content-Type'] == 'text/plain' }).to have_been_made
    end
  end

  context('with StringIO input') do
    let(:file) { StringIO.new("Hello world\n") }
    include_examples 'should upload'
  end

  context('with IO input') do
    let(:file) { File.open(File.join(FIXTURES_DIR, 'files', 'test.txt'), 'r') }
    include_examples 'should upload'

    it 'should not close stream' do
      expect(file.closed?).to be false
    end
  end

  context('with Tempfile input') do
    let(:file) do
      temp_file = Tempfile.new("tempfile")
      temp_file.write("Hello world\n")
      temp_file.rewind
      temp_file
    end
    include_examples 'should upload'

    it 'should not close stream' do
      expect(file.closed?).to be false
    end
  end

  context('with file path input') do
    let(:file) { File.join(FIXTURES_DIR, 'files', 'test.txt') }
    include_examples 'should upload'
  end

  context('with invalid input') do
    let(:file) { -> {} }
    it 'should raise client error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
    end
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

  before(:example) do
    stub_request(:post, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
  end

  it 'should send content' do
    expected_body = <<EOF.gsub(/\n/, "\r\n")
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
    expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
      .with(body: expected_body)).to have_been_made
  end

  it 'should send upload protocol' do
    command.execute(client)
    expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
      .with { |req| req.headers['X-Goog-Upload-Protocol'] == 'multipart' }).to have_been_made
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
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals')
        .to_return(headers: { 'X-Goog-Upload-Status' => 'active', 'X-Goog-Upload-URL' => 'https://www.googleapis.com/zoo/animals' })
        .to_return(headers: { 'X-Goog-Upload-Status' => 'final' }, body: %(OK))
    end

    it 'should send upload protocol' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with { |req| req.headers['X-Goog-Upload-Protocol'] == 'resumable' }).to have_been_made
    end

    it 'should send start command' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with { |req| req.headers['X-Goog-Upload-Command'] == 'start' }).to have_been_made
    end

    it 'should send upload command' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with { |req| req.headers['X-Goog-Upload-Command'].include?('upload') }).to have_been_made
    end

    it 'should send upload content' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'Hello world')).to have_been_made
    end
  end

  context 'with retriable error on start' do
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals')
        .to_timeout
        .to_return(headers: { 'X-Goog-Upload-Status' => 'active', 'X-Goog-Upload-URL' => 'https://www.googleapis.com/zoo/animals' })
        .to_return(headers: { 'X-Goog-Upload-Status' => 'active', 'X-Goog-Upload-Size-Received' => '6' })
        .to_return(headers: { 'X-Goog-Upload-Status' => 'final' }, body: %(OK))
    end

    it 'should retry start command and continue' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'Hello world')).to have_been_made
    end
  end

  context 'with non-retriable authorization error on start' do
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [401, 'unauthorized'], headers: { 'X-Goog-Upload-Status' => 'final' }, body: %(unauthorized))
    end

    it 'should propagate the original error' do
      expect { command.execute(client) }.to raise_error Google::Apis::AuthorizationError
    end
  end

  context 'with interruption' do
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals')
        .to_return(headers: { 'X-Goog-Upload-Status' => 'active', 'X-Goog-Upload-URL' => 'https://www.googleapis.com/zoo/animals' })
        .to_return(status: [500, 'Server error'])
        .to_return(headers: { 'X-Goog-Upload-Status' => 'active', 'X-Goog-Upload-Size-Received' => '6' })
        .to_return(headers: { 'X-Goog-Upload-Status' => 'final' }, body: %(OK))
    end

    it 'should send remaining upload content after failure' do
      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'world')).to have_been_made
    end
  end

  context 'with cancelled upload' do
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals')
        .to_return(headers: { 'X-Goog-Upload-Status' => 'active', 'X-Goog-Upload-URL' => 'https://www.googleapis.com/zoo/animals' })
        .to_return(status: [500, 'Server error'])
        .to_return(headers: { 'X-Goog-Upload-Status' => 'cancelled' })
    end

    it 'should raise error' do
      expect { command.execute(client) }.to raise_error Google::Apis::ClientError
    end
  end
end
