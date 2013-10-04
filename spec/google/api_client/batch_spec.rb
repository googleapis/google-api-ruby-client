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
require 'google/api_client/version'

describe Google::APIClient::BatchRequest do
  CLIENT = Google::APIClient.new(:application_name => 'API Client Tests') unless defined?(CLIENT)

  after do
    # Reset client to not-quite-pristine state
    CLIENT.key = nil
    CLIENT.user_ip = nil
  end

  it 'should raise an error if making an empty batch request' do
    batch = Google::APIClient::BatchRequest.new

    (lambda do
      CLIENT.execute(batch)
    end).should raise_error(Google::APIClient::BatchError)
  end

  it 'should allow query parameters in batch requests' do
    batch = Google::APIClient::BatchRequest.new
    batch.add(:uri => 'https://example.com', :parameters => {
      'a' => '12345'
    })
    method, uri, headers, body = batch.to_http_request
    body.read.should include("/?a=12345")
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
          result.status.should == 200
          expected_ids.should include(result.response.call_id)
          expected_ids.delete(result.response.call_id)
        end

        batch.add(@call1, ids[0])
        batch.add(@call2, ids[1])

        CLIENT.execute(batch)
        block_called.should == 2
      end

      it 'should execute both when using individual callbacks' do
        batch = Google::APIClient::BatchRequest.new

        call1_returned, call2_returned = false, false
        batch.add(@call1) do |result|
          call1_returned = true
          result.status.should == 200
        end
        batch.add(@call2) do |result|
          call2_returned = true
          result.status.should == 200
        end

        CLIENT.execute(batch)
        call1_returned.should == true
        call2_returned.should == true
      end

      it 'should raise an error if using the same call ID more than once' do
        batch = Google::APIClient::BatchRequest.new

        (lambda do
          batch.add(@call1, 'my_id')
          batch.add(@call2, 'my_id')
        end).should raise_error(Google::APIClient::BatchError)
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
          expected_ids.should include(result.response.call_id)
          expected_ids.delete(result.response.call_id)
          if result.response.call_id == ids[0]
            result.status.should == 200
          else
            result.status.should >= 400
            result.status.should < 500
          end
        end

        batch.add(@call1, ids[0])
        batch.add(@call2, ids[1])

        CLIENT.execute(batch)
        block_called.should == 2
      end

      it 'should execute both when using individual callbacks' do
        batch = Google::APIClient::BatchRequest.new

        call1_returned, call2_returned = false, false
        batch.add(@call1) do |result|
          call1_returned = true
          result.status.should == 200
        end
        batch.add(@call2) do |result|
          call2_returned = true
          result.status.should >= 400
          result.status.should < 500
        end

        CLIENT.execute(batch)
        call1_returned.should == true
        call2_returned.should == true
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
        request[:method].to_s.downcase.should == 'post'
        request[:url].to_s.should == 'https://www.googleapis.com/batch'
        request[:request_headers]['Content-Type'].should == "multipart/mixed;boundary=#{boundary}"
        # TODO - Fix headers
        #expected_body = /--#{Regexp.escape(boundary)}\nContent-Type: +application\/http\nContent-ID: +<[\w-]+\+1>\n\nPOST +https:\/\/www.googleapis.com\/calendar\/v3\/calendars\/myemail@mydomain.tld\/events +HTTP\/1.1\nContent-Type: +application\/json\n\n#{Regexp.escape(@call1[:body])}\n\n--#{boundary}\nContent-Type: +application\/http\nContent-ID: +<[\w-]+\+2>\n\nPOST +https:\/\/www.googleapis.com\/calendar\/v3\/calendars\/myemail@mydomain.tld\/events HTTP\/1.1\nContent-Type: +application\/json\n\n#{Regexp.escape(@call2[:body])}\n\n--#{Regexp.escape(boundary)}--/
        #request[:body].read.gsub("\r", "").should =~ expected_body
      end
    end

  end
end
