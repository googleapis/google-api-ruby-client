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

    end
  end
end