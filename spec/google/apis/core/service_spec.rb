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
require 'ostruct'

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

    context 'with fetch_all' do
      let(:responses) do
        data = {}
        data[nil] = OpenStruct.new(
          next_page_token: 'p1', alt_page_token: 'p2', items: ['a', 'b', 'c'], alt_items: [1, 2, 3], singular: 'foo')
        data['p1'] = OpenStruct.new(
          next_page_token: 'p2', items: ['d', 'e', 'f'], alt_items: [4, 5, 6], singular: 'bar')
        data['p2'] = OpenStruct.new(
          next_page_token: nil, alt_page_token: nil, items: ['g', 'h', 'i'], alt_items: [7, 8, 9], singular: 'baz')
        data
      end

      let(:items) { service.fetch_all { |token| responses[token] } }

      it 'should fetch pages until next page token is nil' do
        expect(items).to contain_exactly('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i')
      end

      it 'should stop on repeated page token' do
        responses['p2'].next_page_token = 'p2'
        expect(items).to contain_exactly('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i')
      end

      it 'should allow selecting another field for response page token' do
        expect(service.fetch_all(response_page_token: :alt_page_token) { |token| responses[token] }
              ).to contain_exactly('a', 'b', 'c', 'g', 'h', 'i')
      end

      it 'should ignore nil collections' do
        responses['p1'].items = nil
        expect(items).to contain_exactly('a', 'b', 'c', 'g', 'h', 'i')
      end

      it 'should allow selecting another field for items' do
        expect(service.fetch_all(items: :alt_items) { |token| responses[token] } ).to contain_exactly(1, 2, 3, 4, 5, 6, 7, 8, 9)
      end

      it 'should allow iterating over singular items' do
        expect(service.fetch_all(items: :singular) { |token| responses[token] } ).to contain_exactly('foo', 'bar', 'baz')
      end

      it 'should allow limiting the number of items to fetch' do
        expect(service.fetch_all(max: 5) { |token| responses[token] } ).to contain_exactly('a', 'b', 'c', 'd', 'e')
      end

      it 'should yield the next token' do
        expect do |b|
          service.fetch_all do |token|
            b.to_proc.call(token)
            responses[token]
          end.count
        end.to yield_successive_args(nil, 'p1', 'p2')
      end

      it 'should cache results' do
        count = 0
        items = service.fetch_all do |token|
          count = count + 1
          responses[token]
        end

        items.each{ |i| puts i }
        items.each{ |i| puts i }

        expect(count).to eq 3
      end

      it 'should allow disabling caching' do
        count = 0
        items = service.fetch_all(cache: false) do |token|
          count = count + 1
          responses[token]
        end

        items.each{ |i| puts i }
        items.each{ |i| puts i }

        expect(count).to eq 6
      end
    end
  end
end
