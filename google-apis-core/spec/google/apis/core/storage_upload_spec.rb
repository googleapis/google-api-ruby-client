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
    command.upload_source = StringIO.new('Hello world')
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
      expect(client).to receive(:put).with(anything, hash_including(body: kind_of(StringIO)))

      command.execute(client)
      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .with { |req| req.headers['Content-Length'].include?('11') }).to have_been_made

      expect(a_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .with { |req| req.headers['Content-Type'].include?('application/json') }).to have_been_made

      expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with{ |req| req.headers['Content-Length'].include?('11')}).to have_been_made
    end

    it 'should send upload content' do
      command.execute(client)
      expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'Hello world')).to have_been_made
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

  context('with StringIO input') do
    let(:file) { StringIO.new("Hello world") }
    include_examples 'should upload'
  end

  context('with empty StringIO input') do
    let(:file) { StringIO.new("") }
    include_examples 'should upload'
  end

  context('with IO input') do
    let(:file) { File.open(File.join(FIXTURES_DIR, 'files', 'test.txt'), 'r') }
    include_examples 'should upload'

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
  end

  context 'with retriable error on start' do
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

    it 'should retry resumable intiation and continue' do
      command.execute(client)
      expect(a_request(:put, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'Hello world')).to have_been_made.twice
    end
  end

  context 'with non-retriable authorization error on start' do
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
    before(:example) do
      stub_request(:post, 'https://www.googleapis.com/zoo/animals?uploadType=resumable')
        .to_return(status: [500, 'Server error'])
    end

    it 'should send remaining upload content after failure' do
      expect { command.execute(client) }.to raise_error Google::Apis::ServerError
    end
  end
end
