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
  describe '::new' do
    let(:filename) { File.join(FIXTURES_PATH, 'files', 'client_secrets.json') }
    let(:data) { File.open(filename, 'r') { |file| JSON.load(file.read) } }

    context 'without options' do
      subject { Google::APIClient::ClientSecrets.new(data) }

      describe 'existence of instance variables' do
        it '@access_token' do
          expect(subject).to respond_to(:access_token)
        end
        it '@authorization_uri' do
          expect(subject).to respond_to(:authorization_uri)
        end
        it '@client_id' do
          expect(subject).to respond_to(:client_id)
        end
        it '@client_secret' do
          expect(subject).to respond_to(:client_secret)
        end
        it '@expires_at' do
          expect(subject).to respond_to(:expires_at)
        end
        it '@expires_in' do
          expect(subject).to respond_to(:expires_in)
        end
        it '@id_token' do
          expect(subject).to respond_to(:id_token)
        end
        it '@issued_at' do
          expect(subject).to respond_to(:issued_at)
        end
        it '@javascript_origins' do
          expect(subject).to respond_to(:javascript_origins)
        end
        it '@redirect_uris' do
          expect(subject).to respond_to(:redirect_uris)
        end
        it '@refresh_token' do
          expect(subject).to respond_to(:refresh_token)
        end
        it '@token_credential_uri' do
          expect(subject).to respond_to(:token_credential_uri)
        end
      end

      describe 'value of instance variables' do
        it 'should set @access_token' do
          expect(subject.access_token).to be_nil
        end
        it 'should set @authorization_uri' do
          expect(subject.authorization_uri).to eq 'https://accounts.google.com/o/oauth2/auth'
        end
        it 'should set @client_id' do
          expect(subject.client_id).to eq '898243283568.apps.googleusercontent.com'
        end
        it 'should set @client_secret' do
          expect(subject.client_secret).to eq 'i8YaXdGgiQ4_KrTVNGsB7QP1'
        end
        it 'should set @expires_at' do
          expect(subject.expires_at).to be_nil
        end
        it 'should set @expires_in' do
          expect(subject.expires_in).to be_nil
        end
        it 'should set @flow' do
          expect(subject.flow).to eq 'installed'
        end
        it 'should set @id_token' do
          expect(subject.id_token).to be_nil
        end
        it 'should set @issued_at' do
          expect(subject.issued_at).to be_nil
        end
        it 'should set @javascript_origins' do
          expect(subject.javascript_origins).to eq []
        end
        it 'should set @redirect_uris' do
          expect(subject.redirect_uris).to eq []
        end
        it 'should set @refresh_token' do
          expect(subject.refresh_token).to be_nil
        end
        it 'should set @token_credential_uri' do
          expect(subject.token_credential_uri).to eq 'https://accounts.google.com/o/oauth2/token'
        end
      end
    end

    context 'with options' do
      context 'option keys are string' do
        let(:string_options) do
          { 'samples' =>
            {
              'access_token'         => 'sample_access_token',
              'auth_uri'             => 'sample_auth_uri',
              'authorization_uri'    => 'sample_authorization_uri',
              'client_id'            => 'sample_client_id',
              'client_secret'        => 'sample_client_secret',
              'expires_at'           => 'sample_expires_at',
              'expires_in'           => 'sample_expires_in',
              'id_token'             => 'sample_id_token',
              'issued_at'            => 'sample_issued_at',
              'javascript_origin'    => 'sample_javascript_origin',
              'javascript_origins'   => 'sample_javascript_origins',
              'redirect_uris'        => 'sample_redirect_uris',
              'refresh_token'        => 'sample_refresh_token',
              'token_credential_uri' => 'sample_token_credential_uri',
              'token_uri'            => 'sample_token_uri' } }
        end
        subject { Google::APIClient::ClientSecrets.new(string_options) }

        describe 'existence of instance variables' do
          it '@access_token' do
            expect(subject).to respond_to(:access_token)
          end
          it '@authorization_uri' do
            expect(subject).to respond_to(:authorization_uri)
          end
          it '@client_id' do
            expect(subject).to respond_to(:client_id)
          end
          it '@client_secret' do
            expect(subject).to respond_to(:client_secret)
          end
          it '@expires_at' do
            expect(subject).to respond_to(:expires_at)
          end
          it '@expires_in' do
            expect(subject).to respond_to(:expires_in)
          end
          it '@id_token' do
            expect(subject).to respond_to(:id_token)
          end
          it '@issued_at' do
            expect(subject).to respond_to(:issued_at)
          end
          it '@javascript_origins' do
            expect(subject).to respond_to(:javascript_origins)
          end
          it '@redirect_uris' do
            expect(subject).to respond_to(:redirect_uris)
          end
          it '@refresh_token' do
            expect(subject).to respond_to(:refresh_token)
          end
          it '@token_credential_uri' do
            expect(subject).to respond_to(:token_credential_uri)
          end
        end

        describe 'value of instance variables' do
          it 'should set @access_token' do
            expect(subject.access_token).to eq 'sample_access_token'
          end
          it 'should set @authorization_uri' do
            expect(subject.authorization_uri).to eq 'sample_auth_uri'
          end
          it 'should set @client_id' do
            expect(subject.client_id).to eq 'sample_client_id'
          end
          it 'should set @client_secret' do
            expect(subject.client_secret).to eq 'sample_client_secret'
          end
          it 'should set @expires_at' do
            expect(subject.expires_at).to eq 'sample_expires_at'
          end
          it 'should set @expires_in' do
            expect(subject.expires_in).to eq 'sample_expires_in'
          end
          it 'should set @flow' do
            expect(subject.flow).to eq 'samples'
          end
          it 'should set @id_token' do
            expect(subject.id_token).to eq 'sample_id_token'
          end
          it 'should set @issued_at' do
            expect(subject.issued_at).to eq 'sample_issued_at'
          end
          it 'should set @javascript_origins' do
            expect(subject.javascript_origins).to eq 'sample_javascript_origins'
          end
          it 'should set @redirect_uris' do
            expect(subject.redirect_uris).to eq 'sample_redirect_uris'
          end
          it 'should set @refresh_token' do
            expect(subject.refresh_token).to eq 'sample_refresh_token'
          end
          it 'should set @token_credential_uri' do
            expect(subject.token_credential_uri).to eq 'sample_token_uri'
          end
        end
      end

      context 'option keys are symbol' do
        let(:symbol_options) do
          { samples:
            {
              access_token:         'sample_access_token',
              auth_uri:             'sample_auth_uri',
              authorization_uri:    'sample_authorization_uri',
              client_id:            'sample_client_id',
              client_secret:        'sample_client_secret',
              expires_at:           'sample_expires_at',
              expires_in:           'sample_expires_in',
              id_token:             'sample_id_token',
              issued_at:            'sample_issued_at',
              javascript_origin:    'sample_javascript_origin',
              javascript_origins:   'sample_javascript_origins',
              redirect_uris:        'sample_redirect_uris',
              refresh_token:        'sample_refresh_token',
              token_credential_uri: 'sample_token_credential_uri',
              token_uri:            'sample_token_uri' } }
        end
        subject { Google::APIClient::ClientSecrets.new(symbol_options) }

        describe 'existence of instance variables' do
          it '@access_token' do
            expect(subject).to respond_to(:access_token)
          end
          it '@authorization_uri' do
            expect(subject).to respond_to(:authorization_uri)
          end
          it '@client_id' do
            expect(subject).to respond_to(:client_id)
          end
          it '@client_secret' do
            expect(subject).to respond_to(:client_secret)
          end
          it '@expires_at' do
            expect(subject).to respond_to(:expires_at)
          end
          it '@expires_in' do
            expect(subject).to respond_to(:expires_in)
          end
          it '@id_token' do
            expect(subject).to respond_to(:id_token)
          end
          it '@issued_at' do
            expect(subject).to respond_to(:issued_at)
          end
          it '@javascript_origins' do
            expect(subject).to respond_to(:javascript_origins)
          end
          it '@redirect_uris' do
            expect(subject).to respond_to(:redirect_uris)
          end
          it '@refresh_token' do
            expect(subject).to respond_to(:refresh_token)
          end
          it '@token_credential_uri' do
            expect(subject).to respond_to(:token_credential_uri)
          end
        end

        describe 'value of instance variables' do
          it 'should set @access_token' do
            expect(subject.access_token).to eq 'sample_access_token'
          end
          it 'should set @authorization_uri' do
            expect(subject.authorization_uri).to eq 'sample_auth_uri'
          end
          it 'should set @client_id' do
            expect(subject.client_id).to eq 'sample_client_id'
          end
          it 'should set @client_secret' do
            expect(subject.client_secret).to eq 'sample_client_secret'
          end
          it 'should set @expires_at' do
            expect(subject.expires_at).to eq 'sample_expires_at'
          end
          it 'should set @expires_in' do
            expect(subject.expires_in).to eq 'sample_expires_in'
          end
          it 'should set @flow' do
            expect(subject.flow).to eq 'samples'
          end
          it 'should set @id_token' do
            expect(subject.id_token).to eq 'sample_id_token'
          end
          it 'should set @issued_at' do
            expect(subject.issued_at).to eq 'sample_issued_at'
          end
          it 'should set @javascript_origins' do
            expect(subject.javascript_origins).to eq 'sample_javascript_origins'
          end
          it 'should set @redirect_uris' do
            expect(subject.redirect_uris).to eq 'sample_redirect_uris'
          end
          it 'should set @refresh_token' do
            expect(subject.refresh_token).to eq 'sample_refresh_token'
          end
          it 'should set @token_credential_uri' do
            expect(subject.token_credential_uri).to eq 'sample_token_uri'
          end
        end
      end
    end
  end

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
      expect { Google::APIClient::ClientSecrets.load(file) }.to raise_exception(JSON::ParserError)
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
