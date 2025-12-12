# Copyright 2022 Google Inc.
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
require 'google/apis/core/storage_upload'
require 'google/apis/core/json_representation'

RSpec.describe Google::Apis::Core::StorageUploadCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    command = Google::Apis::Core::StorageUploadCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
    command.upload_source = file
    command.upload_content_type = 'text/plain'
    command
  end

  shared_examples 'should upload' do
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
    end

    before(:example) do
      stub_request(:put, 'https://www.googleapis.com/zoo/animals')
        .to_return(body: %(OK))
    end

    it 'should send upload command' do
      allow(client).to receive(:put).and_call_original
      expect(client).to receive(:put).with(anything, kind_of(StringIO), kind_of(Hash))

      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')).to have_been_made

      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .with { |req| req.headers['Content-Type'].include?('application/json') }).to have_been_made

      expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')).to have_been_made
    end

    it 'should generate a proper opencensus span' do
      OpenCensus::Trace.start_request_trace do |span_context|
        command.execute(client)
        spans = span_context.build_contained_spans
        expect(spans.size).to eql 1
        span = spans.first
        expect(span.name.value).to eql '/zoo/animals'
      end
    end
  end

  shared_examples 'should upload content' do
    it 'should send upload content' do
      command.execute(client)
      expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'Hello world')).to have_been_made
    end
  end

  context('with StringIO input') do
    let(:file) { StringIO.new(+"Hello world") }
    include_examples 'should upload'
    include_examples 'should upload content'
  end

  context('with empty StringIO input') do
    let(:file) { StringIO.new(+"") }
    include_examples 'should upload'
  end

  context('with IO input') do
    let(:file) { File.open(File.join(FIXTURES_DIR, 'files', 'test.txt'), 'r') }
    include_examples 'should upload'
    include_examples 'should upload content'

    it 'should not close stream' do
      expect(file.closed?).to be false
    end
  end

  context 'with empty Tempfile' do
    let(:file) { Tempfile.new {} }
    include_examples 'should upload'    
  end

  context('with file path input') do
    let(:file) { File.join(FIXTURES_DIR, 'files', 'test.txt') }
    include_examples 'should upload'
    include_examples 'should upload content'
  end

  context('with files larger than 100 MB') do
    let(:file) { StringIO.new(+"Hello world" * 2 )}
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
    end

    before(:example) do
      stub_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with(headers: { 'Content-Range' => 'bytes 0-10/22' })
        .to_return(status: [308, 'Resume Incomplete'])
    end

    before(:example) do
      stub_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with(headers: { 'Content-Range' => 'bytes 11-21/22'})
        .to_return(body: %(OK))
    end

    it 'should make requests multiple times' do
      command.options.upload_chunk_size = 11
      command.execute(client)
      expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with(body: "Hello world")).to have_been_made.twice
    end
  end

  context('restart resumable upload with upload_url') do
    let(:file) { StringIO.new('Hello world' * 3) }
    let(:upload_id) { 'TestId' }
    let(:upload_url) { "https://www.googleapis.com/zoo/animals?uploadType=resumable&upload_id=#{upload_id}" }

    before(:example) do
      stub_request(:put, upload_url)
        .with(
          headers: {
            'Content-Length' => '0',
            'Content-Range' => 'bytes */33'
          }
        )
        .to_return(
          status: [308, 'Resume Incomplete'],
          headers: { 'Range' => 'bytes=0-21' }
        )
    end

    before(:example) do
      stub_request(:put, upload_url)
        .with(headers: { 'Content-Range' => 'bytes 22-32/33' })
        .to_return(body: %(OK))
    end

    it 'should restart a resumable upload' do
      command.options.upload_chunk_size = 11
      command.upload_id = upload_id
      command.execute(client)
      expect(a_request(:put, upload_url)
        .with(body: 'Hello world')).to have_been_made
    end
  end

  context('should not restart resumable upload if upload is completed') do
    let(:file) { StringIO.new('Hello world' * 3) }
    let(:upload_id) { 'TestId' }
    let(:upload_url) { "https://www.googleapis.com/zoo/animals?uploadType=resumable&upload_id=#{upload_id}" }

    before(:example) do
      stub_request(:put, upload_url)
        .with(
          headers: {
            'Content-Length' => '0',
            'Content-Range' => 'bytes */33'
          }
        )
        .to_return(status: 200, headers: { 'Range' => 'bytes=0-32' })
    end

    before(:example) do
      stub_request(:put, upload_url)
        .with(headers: { 'Content-Range' => 'bytes */33' })
        .to_return(status: 200)
    end

    it 'should not restart a upload' do
      command.options.upload_chunk_size = 11
      command.upload_id = upload_id

      command.execute(client)
      expect(a_request(:put, upload_url)
        .with(body: 'Hello world')).to have_not_been_made
    end
  end

  context('delete resumable upload with upload_id') do
    let(:file) { StringIO.new('Hello world' * 3) }
    let(:upload_id) { 'TestId' }
    let(:upload_url) { "https://www.googleapis.com/zoo/animals?uploadType=resumable&upload_id=#{upload_id}" }


    before(:example) do
      stub_request(:delete, upload_url)
        .with(headers: { 'Content-Length' => '0' })
        .to_return(status: [499])
    end

    before(:example) do
      stub_request(:put, upload_url)
        .with(
          headers: {
            'Content-Length' => '0',
            'Content-Range' => 'bytes */33'
          }
        )
        .to_return(status: [499])
    end

    it 'should cancel a resumable upload' do
      command.options.upload_chunk_size = 11
      command.upload_id = upload_id
      command.delete_upload = true
      command.execute(client)
      expect(a_request(:delete, upload_url)).to have_been_made
      expect(command).to be_truthy
    end

    it 'should not call resumable upload when upload is cancelled' do
      command.options.upload_chunk_size = 11
      command.upload_id = upload_id
      command.delete_upload = true
      command.execute(client)
      expect(a_request(:put, upload_url)
        .with(body: 'Hello world')).to have_not_been_made
    end
  end

  context('with chunking disabled') do
    let!(:file) { StringIO.new(+"Hello world")}
    include_examples 'should upload'

    it 'should upload content in one request' do
      expect(StringIO).not_to receive(:new)

      command.options.upload_chunk_size = 0
      command.execute(client)
      expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with(body: "Hello world")).to have_been_made
    end
  end

  context 'with retriable error on start' do
    let(:file) { StringIO.new "Hello world"}
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .to_timeout
        .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
    end

    before(:example) do
      stub_request(:put, 'https://www.googleapis.com/zoo/animals')
        .to_timeout
        .to_return(body: %(OK))
    end

    it 'should retry resumable initiation and continue' do
      command.execute(client)
      expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'Hello world')).to have_been_made.twice
    end
  end

  context 'with non-retriable authorization error on start' do
    let(:file) { StringIO.new }
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .to_return(status: [401, 'Unauthorized'], body: %(Unauthorized))
    end

    it 'should propagate the original error' do
      expect { command.execute(client) }.to raise_error Google::Apis::AuthorizationError
    end
  end

  context('with invalid input') do
    let(:file) { -> {} }
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .to_return(status: [400, 'Invalid request'])
    end
    
    it 'should raise client error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
    end
  end

  context 'with interruption' do
    let(:file) { StringIO.new }
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .to_return(status: [500, 'Server error'])
    end

    it 'should send remaining upload content after failure' do
      expect { command.execute(client) }.to raise_error Google::Apis::ServerError
    end
  end
  context 'when uploading with md5 checksum' do

    let(:file) { StringIO.new(file_content) }
    let(:md5_checksum) {"md5_checksum" }
    let(:body_with_md5) { { "md5Hash" => md5_checksum }.to_json }

    context 'with single shot upload' do
      let(:file_content) { "Hello world" }

      before(:example) do
        command.body = body_with_md5
        allow(command).to receive(:formatted_checksum_header).and_call_original

        stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['X-Goog-Hash'] == "md5=#{md5_checksum}" }
          .to_return(body: %(OK))
      end

      it 'should not include X-Goog-Hash header during initiation' do
        command.execute(client)
        expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .with { |req| req.headers['X-Goog-Hash'] == "md5=#{md5_checksum}" }).to_not have_been_made
      end

      it 'calls formatted_checksum_header and returns correct value' do
        expect(command.formatted_checksum_header).to eq("md5=#{md5_checksum}")
      end
    end

    context 'with chunked upload' do
      let(:file_content) { "Hello world" * 2 }

      before(:example) do
        command.body = body_with_md5
        allow(command).to receive(:formatted_checksum_header).and_call_original

        stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with(headers: { 'Content-Range' => 'bytes 0-10/22' })
          .to_return(status: [308, 'Resume Incomplete'])
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with(headers: { 
            'Content-Range' => 'bytes 11-21/22',
            'X-Goog-Hash' => "md5=#{md5_checksum}"
          })
          .to_return(body: %(OK))
      end

      it 'should not include X-Goog-Hash header during initiation' do
        command.options.upload_chunk_size = 11
        command.execute(client)
        expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .with { |req| req.headers['X-Goog-Hash'] == "md5=#{md5_checksum}" }).to_not have_been_made
      end

      it 'includes md5 checksum in X-Goog-Hash header only in the last chunk' do
        command.options.upload_chunk_size = 11
        command.execute(client)
        
        # First chunk should NOT have the X-Goog-Hash header
        expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Content-Range'] == 'bytes 0-10/22' && !req.headers.key?('X-Goog-Hash') }).to have_been_made
        
          # Last chunk should have the X-Goog-Hash header
        expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Content-Range'] == 'bytes 11-21/22' && req.headers['X-Goog-Hash'] == "md5=#{md5_checksum}" }).to have_been_made
      end
    end
  end

  context 'when uploading with crc32c checksum' do

    let(:file) { StringIO.new(file_content) }
    let(:crc32c_checksum) { "abc_checksum" }
    let(:body_with_crc32c) { { "crc32c" => crc32c_checksum }.to_json }

    context 'with single shot upload' do
      let(:file_content) { "Hello world" }

      before(:example) do
        command.body = body_with_crc32c
        allow(command).to receive(:formatted_checksum_header).and_call_original

        stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['X-Goog-Hash'] == "crc32c=#{crc32c_checksum}" }
          .to_return(body: %(OK))
      end

      it 'should not include X-Goog-Hash header during initiation' do
        command.execute(client)
        expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .with { |req| req.headers['X-Goog-Hash'] == "crc32c=#{crc32c_checksum}" }).to_not have_been_made
      end

      it 'calls formatted_checksum_header and returns correct value' do
        expect(command.formatted_checksum_header).to eq("crc32c=#{crc32c_checksum}")
      end
    end

    context 'with chunked upload' do
      let(:file_content) { "Hello world" * 2 }

      before(:example) do
        command.body = body_with_crc32c
        allow(command).to receive(:formatted_checksum_header).and_call_original

        stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with(headers: { 'Content-Range' => 'bytes 0-10/22' })
          .to_return(status: [308, 'Resume Incomplete'])
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with(headers: { 
            'Content-Range' => 'bytes 11-21/22',
            'X-Goog-Hash' => "crc32c=#{crc32c_checksum}"
          })
          .to_return(body: %(OK))
      end

      it 'should not include X-Goog-Hash header during initiation' do
        command.options.upload_chunk_size = 11
        command.execute(client)
        expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .with { |req| req.headers['X-Goog-Hash'] == "crc32c=#{crc32c_checksum}" }).to_not have_been_made
      end

      it 'includes md5 checksum in X-Goog-Hash header only in the last chunk' do
        command.options.upload_chunk_size = 11
        command.execute(client)
        
        # First chunk should NOT have the X-Goog-Hash header
        expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Content-Range'] == 'bytes 0-10/22' && !req.headers.key?('X-Goog-Hash') }).to have_been_made
        
          # Last chunk should have the X-Goog-Hash header
        expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Content-Range'] == 'bytes 11-21/22' && req.headers['X-Goog-Hash'] == "crc32c=#{crc32c_checksum}" }).to have_been_made
      end

    end
  end

  context 'when uploading with md5 and crc32c checksum' do
     let(:file) { StringIO.new(file_content) }
     let(:md5_checksum) { "md5_checksum"}
     let(:crc32c_checksum) { "crc32c_checksum" }
     let(:body_with_md5_crc32c) { { "md5Hash" => md5_checksum, "crc32c" => crc32c_checksum }.to_json }

    context 'with single shot upload' do
      let(:file_content) { "Hello world" }

      before(:example) do
        command.body = body_with_md5_crc32c
        allow(command).to receive(:formatted_checksum_header).and_call_original
        stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['X-Goog-Hash'] == "crc32c=#{crc32c_checksum},md5=#{md5_checksum}" }
          .to_return(body: %(OK))
      end

      it 'should not include X-Goog-Hash header during initiation' do
        command.execute(client)
        expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .with { |req| req.headers['X-Goog-Hash'] == "crc32c=#{crc32c_checksum},md5=#{md5_checksum}" }).to_not have_been_made
      end

      it 'calls formatted_checksum_header and returns correct value' do
        expect(command.formatted_checksum_header).to eq("crc32c=#{crc32c_checksum},md5=#{md5_checksum}")
      end
    end

    context 'with chunked upload' do
      let(:file_content) { "Hello world" * 2 }
    
      before(:example) do
        command.body = body_with_md5_crc32c
        allow(command).to receive(:formatted_checksum_header).and_call_original

        stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .to_return(headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }, body: %(OK))
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with(headers: { 'Content-Range' => 'bytes 0-10/22' })
          .to_return(status: [308, 'Resume Incomplete'])
        stub_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with(headers: { 
            'Content-Range' => 'bytes 11-21/22',
            'X-Goog-Hash' => "crc32c=#{crc32c_checksum},md5=#{md5_checksum}"
          })
          .to_return(body: %(OK))
      end

      it 'should not includeX-Goog-Hash header during initiation' do
        command.options.upload_chunk_size = 11
        command.execute(client)
        expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
          .with { |req| req.headers['X-Goog-Hash'] == "crc32c=#{crc32c_checksum},md5=#{md5_checksum}" }).to_not have_been_made
      end

      it 'includes md5 and crc32c checksum in X-Goog-Hash header only in the last chunk' do
        command.options.upload_chunk_size = 11
        command.execute(client)
        
        # First chunk should NOT have the X-Goog-Hash header
        expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Content-Range'] == 'bytes 0-10/22' && !req.headers.key?('X-Goog-Hash') }).to have_been_made
        
          # Last chunk should have the X-Goog-Hash header
        expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Content-Range'] == 'bytes 11-21/22' && req.headers['X-Goog-Hash'] == "crc32c=#{crc32c_checksum},md5=#{md5_checksum}" }).to have_been_made
      end

    end
  end

end