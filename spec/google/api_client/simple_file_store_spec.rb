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

require 'google/api_client/service/simple_file_store'

describe Google::APIClient::Service::SimpleFileStore do

  FILE_NAME = 'test.cache'

  before(:all) do
    File.delete(FILE_NAME) if File.exists?(FILE_NAME)
  end

  describe 'with no cache file' do
    before(:each) do
      File.delete(FILE_NAME) if File.exists?(FILE_NAME)
      @cache = Google::APIClient::Service::SimpleFileStore.new(FILE_NAME)
    end

    it 'should return nil when asked if a key exists' do
      @cache.exist?('invalid').should be_nil
      File.exists?(FILE_NAME).should be_false
    end

    it 'should return nil when asked to read a key' do
      @cache.read('invalid').should be_nil
      File.exists?(FILE_NAME).should be_false
    end

    it 'should return nil when asked to fetch a key' do
      @cache.fetch('invalid').should be_nil
      File.exists?(FILE_NAME).should be_false
    end

    it 'should create a cache file when asked to fetch a key with a default' do
      @cache.fetch('new_key') do
        'value'
      end.should == 'value'
      File.exists?(FILE_NAME).should be_true
    end

    it 'should create a cache file when asked to write a key' do
      @cache.write('new_key', 'value')
      File.exists?(FILE_NAME).should be_true
    end

    it 'should return nil when asked to delete a key' do
      @cache.delete('invalid').should be_nil
      File.exists?(FILE_NAME).should be_false
    end
  end

  describe 'with an existing cache' do
    before(:each) do
      File.delete(FILE_NAME) if File.exists?(FILE_NAME)
      @cache = Google::APIClient::Service::SimpleFileStore.new(FILE_NAME)
      @cache.write('existing_key', 'existing_value')
    end

    it 'should return true when asked if an existing key exists' do
      @cache.exist?('existing_key').should be_true
    end

    it 'should return false when asked if a nonexistent key exists' do
      @cache.exist?('invalid').should be_false
    end

    it 'should return the value for an existing key when asked to read it' do
      @cache.read('existing_key').should == 'existing_value'
    end

    it 'should return nil for a nonexistent key when asked to read it' do
      @cache.read('invalid').should be_nil
    end

    it 'should return the value for an existing key when asked to read it' do
      @cache.read('existing_key').should == 'existing_value'
    end

    it 'should return nil for a nonexistent key when asked to fetch it' do
      @cache.fetch('invalid').should be_nil
    end

    it 'should return and save the default value for a nonexistent key when asked to fetch it with a default' do
      @cache.fetch('new_key') do
        'value'
      end.should == 'value'
      @cache.read('new_key').should == 'value'
    end

    it 'should remove an existing value and return true when asked to delete it' do
      @cache.delete('existing_key').should be_true
      @cache.read('existing_key').should be_nil
    end

    it 'should return false when asked to delete a nonexistent key' do
      @cache.delete('invalid').should be_false
    end

    it 'should convert keys to strings when storing them' do
      @cache.write(:symbol_key, 'value')
      @cache.read('symbol_key').should == 'value'
    end

    it 'should convert keys to strings when reading them' do
      @cache.read(:existing_key).should == 'existing_value'
    end

    it 'should convert keys to strings when fetching them' do
      @cache.fetch(:existing_key).should == 'existing_value'
    end

    it 'should convert keys to strings when deleting them' do
      @cache.delete(:existing_key).should be_true
      @cache.read('existing_key').should be_nil
    end
  end

  after(:all) do
    File.delete(FILE_NAME) if File.exists?(FILE_NAME)
  end
end