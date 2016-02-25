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
require 'google/apis/core/http_command'
require 'hurley/test'

RSpec.describe Google::Apis::Core::HttpCommand do
  include TestHelpers
  include_context 'HTTP client'

  context('with credentials') do
    let(:command) do
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.options.authorization = authorization
      command
    end

    context('that are refreshable') do
      let(:authorization) do
        calls = 0
        auth =  object_double(Signet::OAuth2::Client.new)
        allow(auth).to receive(:apply!) do |header|
          header['Authorization'] = sprintf('Bearer a_token_value_%d', calls)
          calls += 1
        end
        auth
      end

      it 'should send credentials' do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
        result = command.execute(client)
        expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
          .with { |req| req.headers['Authorization'] == 'Bearer a_token_value_0' }).to have_been_made
      end

      context('with authorizaton error') do
        before(:example) do
          stub_request(:get, 'https://www.googleapis.com/zoo/animals')
            .to_return(status: [401, 'Unauthorized'])
            .to_return(body: %(Hello world))
        end

        it 'should refresh if auth error received' do
          result = command.execute(client)
          expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
            .with { |req| req.headers['Authorization'] == 'Bearer a_token_value_1' }).to have_been_made
        end

        it 'should ignore retry count' do
          command.options.retries = 0
          result = command.execute(client)
          expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
            .with { |req| req.headers['Authorization'] == 'Bearer a_token_value_1' }).to have_been_made
        end
      end
    end

    context('that are bare tokens`') do
      let(:authorization) { 'a_token_value' }

      it 'should send credentials' do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
        result = command.execute(client)
        expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
          .with { |req| expect(req.headers['Authorization']).to eql 'Bearer a_token_value' }).to have_been_made
      end

      it 'should send not refresh' do
        stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(status: [401, 'Unauthorized'])
        expect { command.execute(client) }.to raise_error(Google::Apis::AuthorizationError)
      end
    end
  end

  context('with a successful response') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_return(body: %(Hello world))
    end

    it 'should return the response body if block not present' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end

    it 'should call block if present' do
      expect { |b| command.execute(client, &b) }.to yield_with_args('Hello world', nil)
    end
  end

  context('with server errors') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [500, 'Server error']).times(2)
        .to_return(body: %(Hello world))
    end

    it 'should return the response body' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end

    it 'should raise error if retries exceeded' do
      command.options.retries = 1
      expect { command.execute(client) }.to raise_error(Google::Apis::ServerError)
    end


    context('with retries exceeded') do
      before(:example) do
        command.options.retries = 1
      end

      let(:err) do
        begin
          command.execute(client)
        rescue Google::Apis::Error => e
          e
        end
      end

      it 'should raise error with HTTP status code' do
        expect(err.status_code).to eq 500
      end

    end

    context('with callbacks') do
      it 'should return the response body after retries' do
        expect { |b| command.execute(client, &b) }.to yield_with_args('Hello world', nil)
      end
    end
  end

  context('with options') do
    let(:command) do
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.options.header = { 'X-Foo' => 'bar' }
      command
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(body: %(Hello world))
    end

    it 'should send user headers' do
      result = command.execute(client)
      expect(a_request(:get, 'https://www.googleapis.com/zoo/animals')
        .with { |req| req.headers['X-Foo'] == 'bar' }).to have_been_made
    end
  end


  context('with redirects') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [302, 'Redirect'], headers: { 'Location' => 'https://zoo.googleapis.com/animals' })
      stub_request(:get, 'https://zoo.googleapis.com/animals')
        .to_return(body: %(Hello world))
    end

    it 'should return the response body' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end
  end

  context('with too many redirects') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [302, 'Redirect'], headers: { 'Location' => 'https://www.googleapis.com/zoo/animals' }).times(6)
    end

    it 'should raise error if retries exceeded' do
      expect { command.execute(client) }.to raise_error(Google::Apis::RedirectError)
    end
  end

  context('with no server response') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_timeout
    end

    it 'should raise transmission error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::TransmissionError)
    end
  end

  context('with invalid status code') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [0, 'Wat!?'])
    end

    it 'should raise transmission error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::TransmissionError)
    end
  end

  context('with client errors') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    before(:example) do
      stub_request(:get, 'https://www.googleapis.com/zoo/animals')
        .to_return(status: [400, 'Invalid request'])
    end

    it 'should raise error without retry' do
      command.options.retries = 1
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
    end

    it 'should call block if present' do
      expect { |b| command.execute(client, &b) }.to yield_with_args(nil, an_instance_of(Google::Apis::ClientError))
    end

    it 'should not swallow errors raised in block' do
      expect { command.execute(client) { raise "Potatoes detected in tailpipe" } }.to raise_error("Potatoes detected in tailpipe")
    end
  end

  it 'should send repeated query parameters' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals?a=1&a=2&a=3')
      .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    command.query['a'] = [1,2,3]
    command.execute(client)
  end

  it 'should not remove initial query parameters' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals?a=1&a=2&a=3&foo=bar')
      .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals?foo=bar')
    command.query['a'] = [1,2,3]
    command.execute(client)
  end

  it 'should send falsey query parameters' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals?a=0&b=false')
      .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    command.query['a'] = 0
    command.query['b'] = false
    command.execute(client)
  end

  it 'should form encode parameters when method is POST and no body present' do
    stub_request(:post, 'https://www.googleapis.com/zoo/animals')
        .with(body: 'a=1&a=2&a=3&b=hello&c=&d=0')
        .to_return(status: [200, ''])
    command = Google::Apis::Core::HttpCommand.new(:post, 'https://www.googleapis.com/zoo/animals')
    command.query['a'] = [1,2,3]
    command.query['b'] = 'hello'
    command.query['c'] = nil
    command.query['d'] = 0
    command.execute(client)
  end

  it 'should raise transmission error instead of socket error' do
    stub_request(:get, 'https://www.googleapis.com/zoo/animals').to_raise(SocketError)
    command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    command.options.retries = 0
    expect { command.execute(client) }.to raise_error(Google::Apis::TransmissionError)
  end
end
