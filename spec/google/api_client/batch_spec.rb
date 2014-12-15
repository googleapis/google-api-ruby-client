# Copyright 2012 Google Inc.
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
require 'google/api_client'

RSpec.describe Google::APIClient::BatchRequest do
  CLIENT = Google::APIClient.new(:application_name => 'API Client Tests') unless defined?(CLIENT)

  after do
    # Reset client to not-quite-pristine state
    CLIENT.key = nil
    CLIENT.user_ip = nil
  end

  it 'should raise an error if making an empty batch request' do
    batch = Google::APIClient::BatchRequest.new

    expect(lambda do
      CLIENT.execute(batch)
    end).to raise_error(Google::APIClient::BatchError)
  end

  it 'should allow query parameters in batch requests' do
    batch = Google::APIClient::BatchRequest.new
    batch.add(:uri => 'https://example.com', :parameters => {
      'a' => '12345'
    })
    method, uri, headers, body = batch.to_http_request
    expect(body.read).to include("/?a=12345")
  end

  describe 'with the discovery API' do
    before do
      CLIENT.authorization = nil
      @discovery = CLIENT.discovered_api('discovery', 'v1')
    end

    describe 'with two valid requests' do
      before do
        @call1 = {
          :api_method => @discovery.apis.get_rest,
          :parameters => {
            'api' => 'plus',
            'version' => 'v1'
          }
        }

        @call2 = {
          :api_method => @discovery.apis.get_rest,
          :parameters => {
            'api' => 'discovery',
            'version' => 'v1'
          }
        }
      end

      it 'should execute both when using a global callback' do
        block_called = 0
        ids = ['first_call', 'second_call']
        expected_ids = ids.clone
        batch = Google::APIClient::BatchRequest.new do |result|
          block_called += 1
          expect(result.status).to eq(200)
          expect(expected_ids).to include(result.response.call_id)
          expected_ids.delete(result.response.call_id)
        end

        batch.add(@call1, ids[0])
        batch.add(@call2, ids[1])

        CLIENT.execute(batch)
        expect(block_called).to eq(2)
      end

      it 'should execute both when using individual callbacks' do
        batch = Google::APIClient::BatchRequest.new

        call1_returned, call2_returned = false, false
        batch.add(@call1) do |result|
          call1_returned = true
          expect(result.status).to eq(200)
        end
        batch.add(@call2) do |result|
          call2_returned = true
          expect(result.status).to eq(200)
        end

        CLIENT.execute(batch)
        expect(call1_returned).to be_truthy
        expect(call2_returned).to be_truthy
      end

      it 'should raise an error if using the same call ID more than once' do
        batch = Google::APIClient::BatchRequest.new

        expect(lambda do
          batch.add(@call1, 'my_id')
          batch.add(@call2, 'my_id')
        end).to raise_error(Google::APIClient::BatchError)
      end
    end

    describe 'with a valid request and an invalid one' do
      before do
        @call1 = {
          :api_method => @discovery.apis.get_rest,
          :parameters => {
            'api' => 'plus',
            'version' => 'v1'
          }
        }

        @call2 = {
          :api_method => @discovery.apis.get_rest,
          :parameters => {
            'api' => 0,
            'version' => 1
          }
        }
      end

      it 'should execute both when using a global callback' do
        block_called = 0
        ids = ['first_call', 'second_call']
        expected_ids = ids.clone
        batch = Google::APIClient::BatchRequest.new do |result|
          block_called += 1
          expect(expected_ids).to include(result.response.call_id)
          expected_ids.delete(result.response.call_id)
          if result.response.call_id == ids[0]
            expect(result.status).to eq(200)
          else
            expect(result.status).to be >= 400
            expect(result.status).to be < 500
          end
        end

        batch.add(@call1, ids[0])
        batch.add(@call2, ids[1])

        CLIENT.execute(batch)
        expect(block_called).to eq(2)
      end

      it 'should execute both when using individual callbacks' do
        batch = Google::APIClient::BatchRequest.new

        call1_returned, call2_returned = false, false
        batch.add(@call1) do |result|
          call1_returned = true
          expect(result.status).to eq(200)
        end
        batch.add(@call2) do |result|
          call2_returned = true
          expect(result.status).to be >= 400
          expect(result.status).to be < 500
        end

        CLIENT.execute(batch)
        expect(call1_returned).to be_truthy
        expect(call2_returned).to be_truthy
      end
    end
  end

  describe 'with the calendar API' do
    before do
      CLIENT.authorization = nil
      @calendar = CLIENT.discovered_api('calendar', 'v3')
    end

    describe 'with two valid requests' do
      before do
        event1 = {
          'summary' => 'Appointment 1',
          'location' => 'Somewhere',
          'start' => {
            'dateTime' => '2011-01-01T10:00:00.000-07:00'
          },
          'end' => {
            'dateTime' => '2011-01-01T10:25:00.000-07:00'
          },
          'attendees' => [
            {
              'email' => 'myemail@mydomain.tld'
            }
          ]
        }

        event2 = {
          'summary' => 'Appointment 2',
          'location' => 'Somewhere as well',
          'start' => {
            'dateTime' => '2011-01-02T10:00:00.000-07:00'
          },
          'end' => {
            'dateTime' => '2011-01-02T10:25:00.000-07:00'
          },
          'attendees' => [
            {
              'email' => 'myemail@mydomain.tld'
            }
          ]
        }

        @call1 = {
          :api_method => @calendar.events.insert,
          :parameters => {'calendarId' => 'myemail@mydomain.tld'},
          :body => MultiJson.dump(event1),
          :headers => {'Content-Type' => 'application/json'}
        }

        @call2 = {
          :api_method => @calendar.events.insert,
          :parameters => {'calendarId' => 'myemail@mydomain.tld'},
          :body => MultiJson.dump(event2),
          :headers => {'Content-Type' => 'application/json'}
        }
      end

      it 'should convert to a correct HTTP request' do
        batch = Google::APIClient::BatchRequest.new { |result| }
        batch.add(@call1, '1').add(@call2, '2')
        request = batch.to_env(CLIENT.connection)
        boundary = Google::APIClient::BatchRequest::BATCH_BOUNDARY
        expect(request[:method].to_s.downcase).to eq('post')
        expect(request[:url].to_s).to eq('https://www.googleapis.com/batch')
        expect(request[:request_headers]['Content-Type']).to eq("multipart/mixed;boundary=#{boundary}")
        body = request[:body].read
        expect(body).to include(@call1[:body])
        expect(body).to include(@call2[:body])
      end
    end

  end
end
