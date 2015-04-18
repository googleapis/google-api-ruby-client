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

  context('with a successful response') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    let(:http_responses) { [ http_text_ok(%(Hello world)) ] }

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

    let(:http_responses) { [ http_text_error(500), http_text_error(500), http_text_ok(%(Hello world)) ] }

    it 'should return the response body' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end

    it 'should raise error if retries exceeded' do
      command.options.retries = 1
      expect { command.execute(client) }.to raise_error(Google::Apis::ServerError)
    end
    
    context('with callbacks') do
      it 'should return the response body after retries' do
        expect { |b| command.execute(client, &b) }.to yield_successive_args(
          [nil, an_instance_of(Google::Apis::ServerError)],
          [nil, an_instance_of(Google::Apis::ServerError)],
          ['Hello world', nil])
      end
    
    end
    
  end
  
  context('with redirects') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    let(:http_responses) { [ http_redirect('https://zoo.googleapis.com/animals'), http_text_ok(%(Hello world))] }

    it 'should return the response body' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end
  end

  context('with too many redirects') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    let(:http_responses) do
      [http_redirect('https://zoo.googleapis.com/animals'),
       http_redirect('https://zoo.googleapis.com/animals'),
       http_redirect('https://zoo.googleapis.com/animals'),
       http_redirect('https://zoo.googleapis.com/animals'),
       http_redirect('https://zoo.googleapis.com/animals'),
       http_redirect('https://zoo.googleapis.com/animals'),
       http_redirect('https://zoo.googleapis.com/animals')]
    end

    it 'should raise error if retries exceeded' do
      expect { command.execute(client) }.to raise_error(Google::Apis::RedirectError)
    end
  end
  
  context('with no server response') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    let(:http_responses) { [] }

    it 'should raise transmission error' do
      expect { command.execute(client) }.to raise_error(Google::Apis::TransmissionError)
    end
    
  end
  context('with authorization errors') do
    let(:command) do
      command = Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
      command.options.retries = 0
      command
    end

    let(:http_responses) { [ http_text_error(401), http_text_ok(%(Hello world)) ] }

    it 'should always retry on authorization errors' do
      result = command.execute(client)
      expect(result).to eql 'Hello world'
    end
  end

  context('with client errors') do
    let(:command) do
      Google::Apis::Core::HttpCommand.new(:get, 'https://www.googleapis.com/zoo/animals')
    end

    let(:http_responses) { [ http_text_error(400) ] }

    it 'should raise error without retry' do
      command.options.retries = 1
      expect { command.execute(client) }.to raise_error(Google::Apis::ClientError)
    end

    it 'should call block if present' do
      expect { |b| command.execute(client, &b) }.to yield_with_args(nil, an_instance_of(Google::Apis::ClientError))
    end
  end
end