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

require 'google/api_client/client_secrets'

FIXTURES_PATH = File.expand_path('../../../fixtures', __FILE__)

RSpec.describe Google::APIClient::ClientSecrets do
  
  context 'with JSON file' do
    let(:file) { File.join(FIXTURES_PATH, 'files', 'client_secrets.json') }
    subject(:secrets) { Google::APIClient::ClientSecrets.load(file)}
  
    it 'should load the correct client ID' do
      expect(secrets.client_id).to be == '898243283568.apps.googleusercontent.com'
    end

    it 'should load the correct client secret' do
      expect(secrets.client_secret).to be == 'i8YaXdGgiQ4_KrTVNGsB7QP1'
    end
    
    context 'serialzed to hash' do
      subject(:hash) { secrets.to_hash }
      it 'should contain the flow as the first key' do
        expect(hash).to have_key "installed"
      end

      it 'should contain the client ID' do
        expect(hash["installed"]["client_id"]).to be == '898243283568.apps.googleusercontent.com'
      end

      it 'should contain the client secret' do
        expect(hash["installed"]["client_secret"]).to be == 'i8YaXdGgiQ4_KrTVNGsB7QP1'
      end

      it 'should remove empty value' do
        expect(hash["installed"]["redirect_uris"]).to be nil
      end

      it 'should remove nil values' do
        expect(hash["installed"]["issued_at"]).to be nil
      end
    end
  end

  context 'with no existing JSON file' do
    it 'should raise exception' do
      file = File.join(FIXTURES_PATH, 'files', 'no_file.json')
      expect { Google::APIClient::ClientSecrets.load(file) }.to raise_exception(Errno::ENOENT)
    end
  end

  context 'with invalid JSON file' do
    it 'should raise exception' do
      file = File.join(FIXTURES_PATH, 'files', 'invalid.json')
      expect { Google::APIClient::ClientSecrets.load(file) }.to raise_exception(MultiJson::ParseError)
    end
  end

  context 'with folder name, which have json file in parents' do
    it 'should load the correct client id' do
      folder = File.join(FIXTURES_PATH, 'files', 'child')
      secrets = Google::APIClient::ClientSecrets.load(folder)
      expect(secrets.client_id).to be == '898243283568.apps.googleusercontent.com'
    end
  end

  context 'with folder wihout client_secrets.json' do
    it "should raise exception", fakefs: true do
      FileUtils.mkdir("/tmp")
      expect { Google::APIClient::ClientSecrets.load('/tmp') }.to raise_exception(ArgumentError)
    end
  end

end
