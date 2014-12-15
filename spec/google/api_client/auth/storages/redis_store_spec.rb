require 'spec_helper'

require 'google/api_client'
require 'google/api_client/version'


describe Google::APIClient::RedisStore do
  let(:root_path) { File.expand_path(File.join(__FILE__, '..', '..', '..', '..', '..')) }
  let(:json_file) { File.expand_path(File.join(root_path, 'fixtures', 'files', 'auth_stored_credentials.json')) }
  let(:redis) {double}

  let(:credentials_hash) { {
      "access_token" => "my_access_token",
      "authorization_uri" => "https://accounts.google.com/o/oauth2/auth",
      "client_id" => "123456_test_client_id@.apps.googleusercontent.com",
      "client_secret" => "123456_client_secret",
      "expires_in" => 3600,
      "refresh_token" => "my_refresh_token",
      "token_credential_uri" => "https://accounts.google.com/o/oauth2/token",
      "issued_at" => 1384440275
  } }

  subject { Google::APIClient::RedisStore.new('a redis instance') }

  it 'should have a redis instance' do
    expect(subject.redis).to be == 'a redis instance'
    subject.redis = 'an other redis instance'
    expect(subject.redis).to be == 'an other redis instance'
  end

  describe 'load_credentials' do

    it 'should load credentials' do
      subject.redis= redis
      expect(redis).to receive(:get).and_return(credentials_hash.to_json)
      expect(subject.load_credentials).to be == credentials_hash
    end

    it 'should return nil' do
      subject.redis= redis
      expect(redis).to receive(:get).and_return(nil)
      expect(subject.load_credentials).to be_nil
    end
  end

  describe 'redis_credentials_key' do
    context 'without given key' do
      it 'should return default key' do
        expect(subject.redis_credentials_key).to be == "google_api_credentials"
      end
    end
    context 'with given key' do
      let(:redis_store) { Google::APIClient::RedisStore.new('a redis instance', 'another_google_api_credentials') }
      it 'should use given key' do
        expect(redis_store.redis_credentials_key).to be == "another_google_api_credentials"
      end
    end

  end

  describe 'write credentials' do

    it 'should write credentials' do
      subject.redis= redis
      expect(redis).to receive(:set).and_return('ok')
      expect(subject.write_credentials(credentials_hash)).to be_truthy
    end
  end

end
