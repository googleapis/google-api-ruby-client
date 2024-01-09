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
require 'tempfile'
require 'tmpdir'

RSpec.describe Google::Apis::Core::DownloadCommand do
  include TestHelpers
  include_context 'HTTP client'

  let(:command) do
    command = Google::Apis::Core::DownloadCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    command.download_dest = dest
    command
  end

  shared_examples 'should download' do
    context 'with successful response' do
      before(:example) do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals')
          .to_return(headers: { 'Content-Type' => 'application/json' }, body: %(Hello world))
      end

      it 'should not include a range header' do
        command.execute(client)
        expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
          .with { |req| !req.headers.key?('Range') }
              ).to have_been_made
      end

      it 'should receive content' do
        expect(received).to eql 'Hello world'
      end
    end

    context 'with error' do
      before(:example) do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals')
            .to_return(status: [404, 'Not Found'], body: '')
      end

      it 'should raise error' do
        expect {received}.to raise_error(Google::Apis::ClientError)
      end
    end

    context 'with disconnects' do
      before(:example) do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals')
          .to_return(body: ['Hello ', Timeout::Error])
          .to_return(status: [206, 'Partial content'], body: 'world')
      end

      it 'should receive entire content' do
        expect(received).to eql('Hello world')
      end
    end

    context 'with disconnects and no partial response' do
      before(:example) do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals')
            .to_return(body: ['Hello ', Timeout::Error])
            .to_return(body: 'Hello world')
      end

      it 'should receive entire content' do
        expect(received).to eql('Hello world')
      end
    end

    context 'with redirect' do
      before(:example) do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals')
          .to_return(status: [302, 'Content moved'], headers: { 'Location' => 'https://content.googleapis.com/files/12345' }, body: %(Content moved))
        stub_request(:get, 'https://content.googleapis.com/files/12345')
          .to_return(headers: { 'Content-Type' => 'application/json' }, body: %(Hello world))
      end

      it 'should receive content' do
        expect(received).to eql 'Hello world'
      end
    end
  end

  context 'with filename destination' do
    let(:dest) { File.join(Dir.mktmpdir, 'test.txt') }
    let(:received) do
      command.execute(client)
      File.read(dest)
    end

    include_examples 'should download'
  end

  context 'with default destination' do
    let(:dest) { nil }
    let(:received) { command.execute(client).string }
    include_examples 'should download'
  end

  context 'with IO destination' do
    let(:dest) { Tempfile.new('test') }
    let(:received) do
      command.execute(client)
      dest.rewind
      dest.read
    end

    include_examples 'should download'
  end

  context 'with #write destination' do
    let(:dest) { WritableIO.new(StringIO.new) }
    let(:received) { command.execute(client).io.string }

    include_examples 'should download'

    WritableIO = Struct.new(:io) do
      def write(data)
        io.write(data)
      end
    end
  end

  context 'with pathname destination' do
    let(:dest) { Pathname.new(File.join(Dir.mktmpdir, 'test-path.txt')) }
    let(:received) do
      command.execute(client)
      File.read(dest)
    end

    include_examples 'should download'
  end
end
