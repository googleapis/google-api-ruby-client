# encoding:utf-8

# Copyright 2013 Google Inc.
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
require 'google/api_client/service'

fixtures_path = File.expand_path('../../../fixtures', __FILE__)

RSpec.describe Google::APIClient::Service do
  include ConnectionHelpers

  APPLICATION_NAME = 'API Client Tests'

  it 'should error out when called without an API name or version' do
    expect(lambda do
      Google::APIClient::Service.new
    end).to raise_error(ArgumentError)
  end

  it 'should error out when called without an API version' do
    expect(lambda do
      Google::APIClient::Service.new('foo')
    end).to raise_error(ArgumentError)
  end

  it 'should error out when the options hash is not a hash' do
    expect(lambda do
      Google::APIClient::Service.new('foo', 'v1', 42)
    end).to raise_error(ArgumentError)
  end

  describe 'with the AdSense Management API' do

    it 'should make a valid call for a method with no parameters' do
      conn = stub_connection do |stub|
        stub.get('/adsense/v1.3/adclients') do |env|
          [200, {}, '{}']
        end
      end
      adsense = Google::APIClient::Service.new(
        'adsense',
        'v1.3',
        {
          :application_name => APPLICATION_NAME,
          :authenticated => false,
          :connection => conn,
          :cache_store => nil
        }
      )

      req = adsense.adclients.list.execute()
      conn.verify
    end

    it 'should make a valid call for a method with parameters' do
      conn = stub_connection do |stub|
        stub.get('/adsense/v1.3/adclients/1/adunits') do |env|
          [200, {}, '{}']
        end
      end
      adsense = Google::APIClient::Service.new(
        'adsense',
        'v1.3',
        {
          :application_name => APPLICATION_NAME,
          :authenticated => false,
          :connection => conn,
          :cache_store => nil
        }
      )
      req = adsense.adunits.list(:adClientId => '1').execute()
    end

    it 'should make a valid call for a deep method' do
      conn = stub_connection do |stub|
        stub.get('/adsense/v1.3/accounts/1/adclients') do |env|
          [200, {}, '{}']
        end
      end
      adsense = Google::APIClient::Service.new(
        'adsense',
        'v1.3',
        {
          :application_name => APPLICATION_NAME,
          :authenticated => false,
          :connection => conn,
          :cache_store => nil
        }
      )
      req = adsense.accounts.adclients.list(:accountId => '1').execute()
    end

    describe 'with no connection' do
      before do
        @adsense = Google::APIClient::Service.new('adsense', 'v1.3',
          {:application_name => APPLICATION_NAME, :cache_store => nil})
      end

      it 'should return a resource when using a valid resource name' do
        expect(@adsense.accounts).to be_a(Google::APIClient::Service::Resource)
      end

      it 'should throw an error when using an invalid resource name' do
        expect(lambda do
           @adsense.invalid_resource
        end).to raise_error
      end

      it 'should return a request when using a valid method name' do
        req = @adsense.adclients.list
        expect(req).to be_a(Google::APIClient::Service::Request)
        expect(req.method.id).to eq('adsense.adclients.list')
        expect(req.parameters).to be_nil
      end

      it 'should throw an error when using an invalid method name' do
        expect(lambda do
           @adsense.adclients.invalid_method
        end).to raise_error
      end

      it 'should return a valid request with parameters' do
        req = @adsense.adunits.list(:adClientId => '1')
        expect(req).to be_a(Google::APIClient::Service::Request)
        expect(req.method.id).to eq('adsense.adunits.list')
        expect(req.parameters).not_to be_nil
        expect(req.parameters[:adClientId]).to eq('1')
      end
    end
  end

  describe 'with the Prediction API' do

    it 'should make a valid call with an object body' do
      conn = stub_connection do |stub|
        stub.post('/prediction/v1.5/trainedmodels?project=1') do |env|
          expect(env.body).to eq('{"id":"1"}')
          [200, {}, '{}']
        end
      end
      prediction = Google::APIClient::Service.new(
        'prediction',
        'v1.5',
        {
          :application_name => APPLICATION_NAME,
          :authenticated => false,
          :connection => conn,
          :cache_store => nil
        }
      )
      req = prediction.trainedmodels.insert(:project => '1').body({'id' => '1'}).execute()
      conn.verify
    end

    it 'should make a valid call with a text body' do
      conn = stub_connection do |stub|
        stub.post('/prediction/v1.5/trainedmodels?project=1') do |env|
          expect(env.body).to eq('{"id":"1"}')
          [200, {}, '{}']
        end
      end
      prediction = Google::APIClient::Service.new(
        'prediction',
        'v1.5',
        {
          :application_name => APPLICATION_NAME,
          :authenticated => false,
          :connection => conn,
          :cache_store => nil
        }
      )
      req = prediction.trainedmodels.insert(:project => '1').body('{"id":"1"}').execute()
      conn.verify
    end

    describe 'with no connection' do
      before do
        @prediction = Google::APIClient::Service.new('prediction', 'v1.5',
          {:application_name => APPLICATION_NAME, :cache_store => nil})
      end

      it 'should return a valid request with a body' do
        req = @prediction.trainedmodels.insert(:project => '1').body({'id' => '1'})
        expect(req).to be_a(Google::APIClient::Service::Request)
        expect(req.method.id).to eq('prediction.trainedmodels.insert')
        expect(req.body).to eq({'id' => '1'})
        expect(req.parameters).not_to be_nil
        expect(req.parameters[:project]).to eq('1')
      end

      it 'should return a valid request with a body when using resource name' do
        req = @prediction.trainedmodels.insert(:project => '1').training({'id' => '1'})
        expect(req).to be_a(Google::APIClient::Service::Request)
        expect(req.method.id).to eq('prediction.trainedmodels.insert')
        expect(req.training).to eq({'id' => '1'})
        expect(req.parameters).not_to be_nil
        expect(req.parameters[:project]).to eq('1')
      end
    end
  end

  describe 'with the Drive API' do

    before do
      @metadata = {
        'title' => 'My movie',
        'description' => 'The best home movie ever made'
      }
      @file = File.expand_path('files/sample.txt', fixtures_path)
      @media = Google::APIClient::UploadIO.new(@file, 'text/plain')
    end

    it 'should make a valid call with an object body and media upload' do
      conn = stub_connection do |stub|
        stub.post('/upload/drive/v1/files?uploadType=multipart') do |env|
          expect(env.body).to be_a Faraday::CompositeReadIO
          [200, {}, '{}']
        end
      end
      drive = Google::APIClient::Service.new(
        'drive',
        'v1',
        {
          :application_name => APPLICATION_NAME,
          :authenticated => false,
          :connection => conn,
          :cache_store => nil
        }
      )
      req = drive.files.insert(:uploadType => 'multipart').body(@metadata).media(@media).execute()
      conn.verify
    end

    describe 'with no connection' do
      before do
        @drive = Google::APIClient::Service.new('drive', 'v1',
          {:application_name => APPLICATION_NAME, :cache_store => nil})
      end

      it 'should return a valid request with a body and media upload' do
        req = @drive.files.insert(:uploadType => 'multipart').body(@metadata).media(@media)
        expect(req).to be_a(Google::APIClient::Service::Request)
        expect(req.method.id).to eq('drive.files.insert')
        expect(req.body).to eq(@metadata)
        expect(req.media).to eq(@media)
        expect(req.parameters).not_to be_nil
        expect(req.parameters[:uploadType]).to eq('multipart')
      end

      it 'should return a valid request with a body and media upload when using resource name' do
        req = @drive.files.insert(:uploadType => 'multipart').file(@metadata).media(@media)
        expect(req).to be_a(Google::APIClient::Service::Request)
        expect(req.method.id).to eq('drive.files.insert')
        expect(req.file).to eq(@metadata)
        expect(req.media).to eq(@media)
        expect(req.parameters).not_to be_nil
        expect(req.parameters[:uploadType]).to eq('multipart')
      end
    end
  end

  describe 'with the Discovery API' do
    it 'should make a valid end-to-end request' do
      discovery = Google::APIClient::Service.new('discovery', 'v1',
          {:application_name => APPLICATION_NAME, :authenticated => false,
           :cache_store => nil})
      result = discovery.apis.get_rest(:api => 'discovery', :version => 'v1').execute
      expect(result).not_to be_nil
      expect(result.data.name).to eq('discovery')
      expect(result.data.version).to eq('v1')
    end
  end
end


RSpec.describe Google::APIClient::Service::Result do

  describe 'with the plus API' do
    before do
      @plus = Google::APIClient::Service.new('plus', 'v1',
          {:application_name => APPLICATION_NAME, :cache_store => nil})
      @reference = Google::APIClient::Reference.new({
        :api_method => @plus.activities.list.method,
        :parameters => {
          'userId' => 'me',
          'collection' => 'public',
          'maxResults' => 20
        }
      })
      @request = @plus.activities.list(:userId => 'me', :collection => 'public',
        :maxResults => 20)

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
        @body = <<-END_OF_STRING
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
        allow(@response).to receive(:body).and_return(@body)
        base_result = Google::APIClient::Result.new(@reference, @response)
        @result = Google::APIClient::Service::Result.new(@request, base_result)
      end

      it 'should indicate a successful response' do
        expect(@result.error?).to be_falsey
      end

      it 'should return the correct next page token' do
        expect(@result.next_page_token).to eq('NEXT+PAGE+TOKEN')
      end

      it 'generate a correct request when calling next_page' do
        next_page_request = @result.next_page
        expect(next_page_request.parameters).to include('pageToken')
        expect(next_page_request.parameters['pageToken']).to eq('NEXT+PAGE+TOKEN')
        @request.parameters.each_pair do |param, value|
          expect(next_page_request.parameters[param]).to eq(value)
        end
      end

      it 'should return content type correctly' do
        expect(@result.media_type).to eq('application/json')
      end

      it 'should return the body correctly' do
        expect(@result.body).to eq(@body)
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
        @body = <<-END_OF_STRING
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
        allow(@response).to receive(:body).and_return(@body)
        base_result = Google::APIClient::Result.new(@reference, @response)
        @result = Google::APIClient::Service::Result.new(@request, base_result)
      end

      it 'should not return a next page token' do
        expect(@result.next_page_token).to eq(nil)
      end

      it 'should return content type correctly' do
        expect(@result.media_type).to eq('application/json')
      end

      it 'should return the body correctly' do
        expect(@result.body).to eq(@body)
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
        @body = <<-END_OF_STRING
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
        allow(@response).to receive(:body).and_return(@body)
        allow(@response).to receive(:status).and_return(400)
        base_result = Google::APIClient::Result.new(@reference, @response)
        @result = Google::APIClient::Service::Result.new(@request, base_result)
      end

      it 'should return error status correctly' do
        expect(@result.error?).to be_truthy
      end

      it 'should return the correct error message' do
        expect(@result.error_message).to eq('Parse Error')
      end

      it 'should return the body correctly' do
        expect(@result.body).to eq(@body)
      end
    end

    describe 'with 204 No Content response' do
      before do
        allow(@response).to receive(:body).and_return('')
        allow(@response).to receive(:status).and_return(204)
        allow(@response).to receive(:headers).and_return({})
        base_result = Google::APIClient::Result.new(@reference, @response)
        @result = Google::APIClient::Service::Result.new(@request, base_result)
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

RSpec.describe Google::APIClient::Service::BatchRequest do
  
  include ConnectionHelpers
  
  context 'with a service connection' do
    before do
      @conn = stub_connection do |stub|
        stub.post('/batch') do |env|
          [500, {'Content-Type' => 'application/json'}, '{}']
        end
      end
      @discovery = Google::APIClient::Service.new('discovery', 'v1',
          {:application_name => APPLICATION_NAME, :authorization => nil,
           :cache_store => nil, :connection => @conn})
      @calls = [
        @discovery.apis.get_rest(:api => 'plus', :version => 'v1'),
        @discovery.apis.get_rest(:api => 'discovery', :version => 'v1')
      ]
    end

    it 'should use the service connection' do
      batch = @discovery.batch(@calls) do
      end
      batch.execute
      @conn.verify
    end  
  end
  
  describe 'with the discovery API' do
    before do
      @discovery = Google::APIClient::Service.new('discovery', 'v1',
          {:application_name => APPLICATION_NAME, :authorization => nil,
           :cache_store => nil})
    end

    describe 'with two valid requests' do
      before do
        @calls = [
          @discovery.apis.get_rest(:api => 'plus', :version => 'v1'),
          @discovery.apis.get_rest(:api => 'discovery', :version => 'v1')
        ]
      end

      it 'should execute both when using a global callback' do
        block_called = 0
        batch = @discovery.batch(@calls) do |result|
          block_called += 1
          expect(result.status).to eq(200)
        end

        batch.execute
        expect(block_called).to eq(2)
      end

      it 'should execute both when using individual callbacks' do
        call1_returned, call2_returned = false, false
        batch = @discovery.batch

        batch.add(@calls[0]) do |result|
          call1_returned = true
          expect(result.status).to eq(200)
          expect(result.call_index).to eq(0)
        end

        batch.add(@calls[1]) do |result|
          call2_returned = true
          expect(result.status).to eq(200)
          expect(result.call_index).to eq(1)
        end

        batch.execute
        expect(call1_returned).to eq(true)
        expect(call2_returned).to eq(true)
      end
    end

    describe 'with a valid request and an invalid one' do
      before do
        @calls = [
          @discovery.apis.get_rest(:api => 'plus', :version => 'v1'),
          @discovery.apis.get_rest(:api => 'invalid', :version => 'invalid')
        ]
      end

      it 'should execute both when using a global callback' do
        block_called = 0
        batch = @discovery.batch(@calls) do |result|
          block_called += 1
          if result.call_index == 0
            expect(result.status).to eq(200)
          else
            expect(result.status).to be >= 400
            expect(result.status).to be < 500
          end
        end

        batch.execute
        expect(block_called).to eq(2)
      end

      it 'should execute both when using individual callbacks' do
        call1_returned, call2_returned = false, false
        batch = @discovery.batch

        batch.add(@calls[0]) do |result|
          call1_returned = true
          expect(result.status).to eq(200)
          expect(result.call_index).to eq(0)
        end

        batch.add(@calls[1]) do |result|
          call2_returned = true
          expect(result.status).to be >= 400
          expect(result.status).to be < 500
          expect(result.call_index).to eq(1)
        end

        batch.execute
        expect(call1_returned).to eq(true)
        expect(call2_returned).to eq(true)
      end      
    end
  end
end