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

describe Google::APIClient::Service do
  include ConnectionHelpers

  APPLICATION_NAME = 'API Client Tests'

  it 'should error out when called without an API name or version' do
    (lambda do
      Google::APIClient::Service.new
    end).should raise_error(ArgumentError)
  end

  it 'should error out when called without an API version' do
    (lambda do
      Google::APIClient::Service.new('foo')
    end).should raise_error(ArgumentError)
  end

  it 'should error out when the options hash is not a hash' do
    (lambda do
      Google::APIClient::Service.new('foo', 'v1', 42)
    end).should raise_error(ArgumentError)
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
        @adsense.accounts.should be_a(Google::APIClient::Service::Resource)
      end

      it 'should throw an error when using an invalid resource name' do
        (lambda do
           @adsense.invalid_resource
        end).should raise_error
      end

      it 'should return a request when using a valid method name' do
        req = @adsense.adclients.list
        req.should be_a(Google::APIClient::Service::Request)
        req.method.id.should == 'adsense.adclients.list'
        req.parameters.should be_nil
      end

      it 'should throw an error when using an invalid method name' do
        (lambda do
           @adsense.adclients.invalid_method
        end).should raise_error
      end

      it 'should return a valid request with parameters' do
        req = @adsense.adunits.list(:adClientId => '1')
        req.should be_a(Google::APIClient::Service::Request)
        req.method.id.should == 'adsense.adunits.list'
        req.parameters.should_not be_nil
        req.parameters[:adClientId].should == '1'
      end
    end
  end

  describe 'with the Prediction API' do

    it 'should make a valid call with an object body' do
      conn = stub_connection do |stub|
        stub.post('/prediction/v1.5/trainedmodels?project=1') do |env|
          env.body.should == '{"id":"1"}'
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
          env.body.should == '{"id":"1"}'
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
        req.should be_a(Google::APIClient::Service::Request)
        req.method.id.should == 'prediction.trainedmodels.insert'
        req.body.should == {'id' => '1'}
        req.parameters.should_not be_nil
        req.parameters[:project].should == '1'
      end

      it 'should return a valid request with a body when using resource name' do
        req = @prediction.trainedmodels.insert(:project => '1').training({'id' => '1'})
        req.should be_a(Google::APIClient::Service::Request)
        req.method.id.should == 'prediction.trainedmodels.insert'
        req.training.should == {'id' => '1'}
        req.parameters.should_not be_nil
        req.parameters[:project].should == '1'
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
          env.body.should be_a Faraday::CompositeReadIO
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
        req.should be_a(Google::APIClient::Service::Request)
        req.method.id.should == 'drive.files.insert'
        req.body.should == @metadata
        req.media.should == @media
        req.parameters.should_not be_nil
        req.parameters[:uploadType].should == 'multipart'
      end

      it 'should return a valid request with a body and media upload when using resource name' do
        req = @drive.files.insert(:uploadType => 'multipart').file(@metadata).media(@media)
        req.should be_a(Google::APIClient::Service::Request)
        req.method.id.should == 'drive.files.insert'
        req.file.should == @metadata
        req.media.should == @media
        req.parameters.should_not be_nil
        req.parameters[:uploadType].should == 'multipart'
      end
    end
  end

  describe 'with the Discovery API' do
    it 'should make a valid end-to-end request' do
      discovery = Google::APIClient::Service.new('discovery', 'v1',
          {:application_name => APPLICATION_NAME, :authenticated => false,
           :cache_store => nil})
      result = discovery.apis.get_rest(:api => 'discovery', :version => 'v1').execute
      result.should_not be_nil
      result.data.name.should == 'discovery'
      result.data.version.should == 'v1'
    end
  end
end


describe Google::APIClient::Service::Result do

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
      @response.stub(:status).and_return(200)
      @response.stub(:headers).and_return({
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
        @response.stub(:body).and_return(@body)
        base_result = Google::APIClient::Result.new(@reference, @response)
        @result = Google::APIClient::Service::Result.new(@request, base_result)
      end

      it 'should indicate a successful response' do
        @result.error?.should be_false
      end

      it 'should return the correct next page token' do
        @result.next_page_token.should == 'NEXT+PAGE+TOKEN'
      end

      it 'generate a correct request when calling next_page' do
        next_page_request = @result.next_page
        next_page_request.parameters.should include('pageToken')
        next_page_request.parameters['pageToken'].should == 'NEXT+PAGE+TOKEN'
        @request.parameters.each_pair do |param, value|
          next_page_request.parameters[param].should == value
        end
      end

      it 'should return content type correctly' do
        @result.media_type.should == 'application/json'
      end

      it 'should return the body correctly' do
        @result.body.should == @body
      end

      it 'should return the result data correctly' do
        @result.data?.should be_true
        @result.data.class.to_s.should ==
            'Google::APIClient::Schema::Plus::V1::ActivityFeed'
        @result.data.kind.should == 'plus#activityFeed'
        @result.data.etag.should == 'FOO'
        @result.data.nextPageToken.should == 'NEXT+PAGE+TOKEN'
        @result.data.selfLink.should ==
            'https://www.googleapis.com/plus/v1/people/foo/activities/public?'
        @result.data.nextLink.should ==
            'https://www.googleapis.com/plus/v1/people/foo/activities/public?' +
            'maxResults=20&pageToken=NEXT%2BPAGE%2BTOKEN'
        @result.data.title.should == 'Plus Public Activity Feed for '
        @result.data.id.should == "123456790"
        @result.data.items.should be_empty
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
        @response.stub(:body).and_return(@body)
        base_result = Google::APIClient::Result.new(@reference, @response)
        @result = Google::APIClient::Service::Result.new(@request, base_result)
      end

      it 'should not return a next page token' do
        @result.next_page_token.should == nil
      end

      it 'should return content type correctly' do
        @result.media_type.should == 'application/json'
      end

      it 'should return the body correctly' do
        @result.body.should == @body
      end

      it 'should return the result data correctly' do
        @result.data?.should be_true
        @result.data.class.to_s.should ==
            'Google::APIClient::Schema::Plus::V1::ActivityFeed'
        @result.data.kind.should == 'plus#activityFeed'
        @result.data.etag.should == 'FOO'
        @result.data.selfLink.should ==
            'https://www.googleapis.com/plus/v1/people/foo/activities/public?'
        @result.data.title.should == 'Plus Public Activity Feed for '
        @result.data.id.should == "123456790"
        @result.data.items.should be_empty
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
        @response.stub(:body).and_return(@body)
        @response.stub(:status).and_return(400)
        base_result = Google::APIClient::Result.new(@reference, @response)
        @result = Google::APIClient::Service::Result.new(@request, base_result)
      end

      it 'should return error status correctly' do
        @result.error?.should be_true
      end

      it 'should return the correct error message' do
        @result.error_message.should == 'Parse Error'
      end

      it 'should return the body correctly' do
        @result.body.should == @body
      end
    end

    describe 'with 204 No Content response' do
      before do
        @response.stub(:body).and_return('')
        @response.stub(:status).and_return(204)
        @response.stub(:headers).and_return({})
        base_result = Google::APIClient::Result.new(@reference, @response)
        @result = Google::APIClient::Service::Result.new(@request, base_result)
      end

      it 'should indicate no data is available' do
        @result.data?.should be_false
      end

      it 'should return nil for data' do
        @result.data.should == nil
      end

      it 'should return nil for media_type' do
        @result.media_type.should == nil
      end
    end
  end
end

describe Google::APIClient::Service::BatchRequest do
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
          result.status.should == 200
        end

        batch.execute
        block_called.should == 2
      end

      it 'should execute both when using individual callbacks' do
        call1_returned, call2_returned = false, false
        batch = @discovery.batch

        batch.add(@calls[0]) do |result|
          call1_returned = true
          result.status.should == 200
          result.call_index.should == 0
        end

        batch.add(@calls[1]) do |result|
          call2_returned = true
          result.status.should == 200
          result.call_index.should == 1
        end

        batch.execute
        call1_returned.should == true
        call2_returned.should == true
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
            result.status.should == 200
          else
            result.status.should >= 400
            result.status.should < 500
          end
        end

        batch.execute
        block_called.should == 2
      end

      it 'should execute both when using individual callbacks' do
        call1_returned, call2_returned = false, false
        batch = @discovery.batch

        batch.add(@calls[0]) do |result|
          call1_returned = true
          result.status.should == 200
          result.call_index.should == 0
        end

        batch.add(@calls[1]) do |result|
          call2_returned = true
          result.status.should >= 400
          result.status.should < 500
          result.call_index.should == 1
        end

        batch.execute
        call1_returned.should == true
        call2_returned.should == true
      end
    end
  end
end