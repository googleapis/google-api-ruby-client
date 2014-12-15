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

RSpec.describe Google::APIClient::Result do
  CLIENT = Google::APIClient.new(:application_name => 'API Client Tests') unless defined?(CLIENT)

  describe 'with the plus API' do
    before do
      CLIENT.authorization = nil
      @plus = CLIENT.discovered_api('plus', 'v1')
      @reference = Google::APIClient::Reference.new({
        :api_method => @plus.activities.list,
        :parameters => {
          'userId' => 'me',
          'collection' => 'public',
          'maxResults' => 20
        }
      })
      @request = @reference.to_http_request

      # Response double
      @response = double("response")
      allow(@response).to receive(:status).and_return(200)
      allow(@response).to receive(:headers).and_return({
        'etag' => '12345',
        'x-google-apiary-auth-scopes' =>
          'https://www.googleapis.com/auth/plus.me',
        'content-type' => 'application/json; charset=UTF-8',
        'date' => 'Mon, 23 Apr 2012 00:00:00 GMT',
        'cache-control' => 'private, max-age=0, must-revalidate, no-transform',
        'server' => 'GSE',
        'connection' => 'close'
      })
    end

    describe 'with a next page token' do
      before do
        allow(@response).to receive(:body).and_return(
          <<-END_OF_STRING
          {
            "kind": "plus#activityFeed",
            "etag": "FOO",
            "nextPageToken": "NEXT+PAGE+TOKEN",
            "selfLink": "https://www.googleapis.com/plus/v1/people/foo/activities/public?",
            "nextLink": "https://www.googleapis.com/plus/v1/people/foo/activities/public?maxResults=20&pageToken=NEXT%2BPAGE%2BTOKEN",
            "title": "Plus Public Activity Feed for ",
            "updated": "2012-04-23T00:00:00.000Z",
            "id": "123456790",
            "items": []
          }
          END_OF_STRING
        )
        @result = Google::APIClient::Result.new(@reference, @response)
      end

      it 'should indicate a successful response' do
        expect(@result.error?).to be_falsey
      end

      it 'should return the correct next page token' do
        expect(@result.next_page_token).to eq('NEXT+PAGE+TOKEN')
      end

      it 'should escape the next page token when calling next_page' do
        reference = @result.next_page
        expect(Hash[reference.parameters]).to include('pageToken')
        expect(Hash[reference.parameters]['pageToken']).to eq('NEXT+PAGE+TOKEN')
        url = reference.to_env(CLIENT.connection)[:url]
        expect(url.to_s).to include('pageToken=NEXT%2BPAGE%2BTOKEN')
      end

      it 'should return content type correctly' do
        expect(@result.media_type).to eq('application/json')
      end

      it 'should return the result data correctly' do
        expect(@result.data?).to be_truthy
        expect(@result.data.class.to_s).to eq(
            'Google::APIClient::Schema::Plus::V1::ActivityFeed'
        )
        expect(@result.data.kind).to eq('plus#activityFeed')
        expect(@result.data.etag).to eq('FOO')
        expect(@result.data.nextPageToken).to eq('NEXT+PAGE+TOKEN')
        expect(@result.data.selfLink).to eq(
            'https://www.googleapis.com/plus/v1/people/foo/activities/public?'
        )
        expect(@result.data.nextLink).to eq(
            'https://www.googleapis.com/plus/v1/people/foo/activities/public?' +
            'maxResults=20&pageToken=NEXT%2BPAGE%2BTOKEN'
        )
        expect(@result.data.title).to eq('Plus Public Activity Feed for ')
        expect(@result.data.id).to eq("123456790")
        expect(@result.data.items).to be_empty
      end
    end

    describe 'without a next page token' do
      before do
        allow(@response).to receive(:body).and_return(
          <<-END_OF_STRING
          {
            "kind": "plus#activityFeed",
            "etag": "FOO",
            "selfLink": "https://www.googleapis.com/plus/v1/people/foo/activities/public?",
            "title": "Plus Public Activity Feed for ",
            "updated": "2012-04-23T00:00:00.000Z",
            "id": "123456790",
            "items": []
          }
          END_OF_STRING
        )
        @result = Google::APIClient::Result.new(@reference, @response)
      end

      it 'should not return a next page token' do
        expect(@result.next_page_token).to eq(nil)
      end

      it 'should return content type correctly' do
        expect(@result.media_type).to eq('application/json')
      end

      it 'should return the result data correctly' do
        expect(@result.data?).to be_truthy
        expect(@result.data.class.to_s).to eq(
            'Google::APIClient::Schema::Plus::V1::ActivityFeed'
        )
        expect(@result.data.kind).to eq('plus#activityFeed')
        expect(@result.data.etag).to eq('FOO')
        expect(@result.data.selfLink).to eq(
            'https://www.googleapis.com/plus/v1/people/foo/activities/public?'
        )
        expect(@result.data.title).to eq('Plus Public Activity Feed for ')
        expect(@result.data.id).to eq("123456790")
        expect(@result.data.items).to be_empty
      end
    end

    describe 'with JSON error response' do
      before do
        allow(@response).to receive(:body).and_return(
         <<-END_OF_STRING
         {
          "error": {
           "errors": [
            {
             "domain": "global",
             "reason": "parseError",
             "message": "Parse Error"
            }
           ],
           "code": 400,
           "message": "Parse Error"
          }
         }
         END_OF_STRING
        )
        allow(@response).to receive(:status).and_return(400)
        @result = Google::APIClient::Result.new(@reference, @response)
      end

      it 'should return error status correctly' do
        expect(@result.error?).to be_truthy
      end

      it 'should return the correct error message' do
        expect(@result.error_message).to eq('Parse Error')
      end
    end

    describe 'with 204 No Content response' do
      before do
        allow(@response).to receive(:body).and_return('')
        allow(@response).to receive(:status).and_return(204)
        allow(@response).to receive(:headers).and_return({})
        @result = Google::APIClient::Result.new(@reference, @response)
      end

      it 'should indicate no data is available' do
        expect(@result.data?).to be_falsey
      end

      it 'should return nil for data' do
        expect(@result.data).to eq(nil)
      end

      it 'should return nil for media_type' do
        expect(@result.media_type).to eq(nil)
      end
    end
  end
end
