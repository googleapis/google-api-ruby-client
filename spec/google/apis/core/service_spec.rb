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
require 'google/apis/options'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'hurley/test'

RSpec.describe Google::Apis::Core::BaseService do
  include TestHelpers

  let(:service) { Google::Apis::Core::BaseService.new('https://www.googleapis.com/', '') }

  before do
    Google::Apis::ClientOptions.default.application_name = 'test'
    Google::Apis::ClientOptions.default.application_version = '1.0'
  end

  it 'should inherit default options' do
    expect(service.client_options.application_name).to eql 'test'
  end

  it 'should include application in user agent' do
    agent = service.send(:user_agent)
    expect(agent).to match /^test\/1.0/
  end

  it 'should inherit authorization' do
    Google::Apis::RequestOptions.default.authorization = 'a token'
    expect(service.authorization).to eql 'a token'
  end

  it 'should allow overiding authorization' do
    Google::Apis::RequestOptions.default.authorization = 'a token'
    service.authorization = 'another token'
    expect(service.authorization).to eql 'another token'
  end

  shared_examples 'with options' do
    it 'should inherit service options' do
      service.request_options.retries = 2
      expect(command.options.retries).to eql 2
    end

    it 'should include per-request options' do
      expect(command.options.authorization).to eql 'foo'
    end

    it 'should allow per-request options to override service options' do
      service.request_options.authorization = 'bar'
      expect(command.options.authorization).to eql 'foo'
    end
  end

  context 'when making raw http requests' do
    context 'with :get methods' do
      before(:example) do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: 'hello world')
      end

      it 'should return body for get' do
        response = service.http(:get, 'https://www.googleapis.com/zoo/animals')
        expect(response).to eq 'hello world'
      end

      it 'should return allow downloads' do
        response = service.http(:get, 'https://www.googleapis.com/zoo/animals', download_dest: StringIO.new)
        expect(response.string).to eq 'hello world'
      end
    end

    context 'with :post methods' do
      before(:example) do
        stub_request(:post, 'https://www.googleapis.com/zoo/animals').to_return(body: '')
      end

      it 'should post body' do
        service.http(:post, 'https://www.googleapis.com/zoo/animals', body: 'hello')
        expect(a_request(:post, 'https://www.googleapis.com/zoo/animals')
          .with(body: 'hello')).to have_been_made
      end
    end
  end

  context 'when making simple commands' do
    let(:command) { service.send(:make_simple_command, :get, 'zoo/animals', authorization: 'foo') }

    it 'should return the correct command type' do
      expect(command).to be_an_instance_of(Google::Apis::Core::ApiCommand)
    end

    it 'should build a correct URL' do
      url = command.url.expand({}).to_s
      expect(url).to eql 'https://www.googleapis.com/zoo/animals'
    end

    include_examples 'with options'
  end

  context 'when making download commands' do
    let(:command) { service.send(:make_download_command, :get, 'zoo/animals', authorization: 'foo') }

    it 'should return the correct command type' do
      expect(command).to be_an_instance_of(Google::Apis::Core::DownloadCommand)
    end

    it 'should build a correct URL' do
      url = command.url.expand({}).to_s
      expect(url).to eql 'https://www.googleapis.com/zoo/animals'
    end

    it 'should include alt=media in params' do
      expect(command.query).to include('alt' => 'media')
    end

    include_examples 'with options'
  end

  context 'when making upload commands' do
    let(:command) { service.send(:make_upload_command, :post, 'zoo/animals', authorization: 'foo') }

    it 'should return the correct command type' do
      expect(command).to be_an_instance_of(Google::Apis::Core::ResumableUploadCommand)
    end

    it 'should build a correct URL' do
      url = command.url.expand({}).to_s
      expect(url).to eql 'https://www.googleapis.com/upload/zoo/animals'
    end

    include_examples 'with options'
  end

  context 'with batch' do
    before(:example) do
      response = <<EOF.gsub(/\n/, "\r\n")
--batch123
Content-Type: application/http

HTTP/1.1 200 OK
Content-Type: text/plain; charset=UTF-8

Hello
--batch123--
EOF
      stub_request(:post, 'https://www.googleapis.com/batch')
        .to_return(headers: { 'Content-Type' => 'multipart/mixed; boundary=batch123' }, body: response)
    end

    it 'should add commands to a batch' do
      expect do |b|
        service.batch do |service|
          command = service.send(:make_simple_command, :get, 'zoo/animals', {})
          service.send(:execute_or_queue_command, command, &b)
        end
      end.to yield_with_args('Hello', nil)
    end

    it 'should disallow uploads in batch' do
      expect do |b|
        service.batch do |service|
          command = service.send(:make_upload_command, :post, 'zoo/animals', {})
          service.send(:execute_or_queue_command, command, &b)
        end
      end.to raise_error(Google::Apis::ClientError)
    end

    it 'should disallow downloads in batch' do
      expect do |b|
        service.batch do |service|
          command = service.send(:make_download_command, :get, 'zoo/animals', {})
          service.send(:execute_or_queue_command, command, &b)
        end
      end.to raise_error(Google::Apis::ClientError)
    end
  end

  context 'with batch uploads' do
    before(:example) do
      response = <<EOF.gsub(/\n/, "\r\n")
--batch123
Content-Type: application/http

HTTP/1.1 200 OK
Content-Type: text/plain; charset=UTF-8

Hello
--batch123--
EOF
      stub_request(:put, 'https://www.googleapis.com/upload/')
        .to_return(headers: { 'Content-Type' => 'multipart/mixed; boundary=batch123' }, body: response)
    end

    it 'should add upload to a batch' do
      expect do |b|
        service.batch_upload do |service|
          command = service.send(:make_upload_command, :post, 'zoo/animals', {})
          command.upload_source = StringIO.new('test')
          command.upload_content_type = 'text/plain'
          service.send(:execute_or_queue_command, command, &b)
        end
      end.to yield_with_args('Hello', nil)
    end

    it 'should use multipart upload' do
      expect do |b|
        service.batch_upload do |service|
          command = service.send(:make_upload_command, :post, 'zoo/animals', {})
          command.upload_source = StringIO.new('test')
          command.upload_content_type = 'text/plain'
          expect(command).to be_an_instance_of(Google::Apis::Core::MultipartUploadCommand)
          service.send(:execute_or_queue_command, command, &b)
        end
      end.to yield_with_args('Hello', nil)
    end

    it 'should disallow downloads in batch' do
      expect do |b|
        service.batch_upload do |service|
          command = service.send(:make_download_command, :get, 'zoo/animals', {})
          service.send(:execute_or_queue_command, command, &b)
        end
      end.to raise_error(Google::Apis::ClientError)
    end

    it 'should disallow simple commands in batch' do
      expect do |b|
        service.batch_upload do |service|
          command = service.send(:make_simple_command, :get, 'zoo/animals', {})
          service.send(:execute_or_queue_command, command, &b)
        end
      end.to raise_error(Google::Apis::ClientError)
    end
  end
end
