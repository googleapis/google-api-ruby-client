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
    subject.redis.should == 'a redis instance'
    subject.redis = 'an other redis instance'
    subject.redis.should == 'an other redis instance'
  end

  describe 'load_credentials' do

    it 'should load credentials' do
      subject.redis= redis
      redis.should_receive(:get).and_return(credentials_hash.to_json)
      subject.load_credentials.should == credentials_hash
    end

    it 'should return nil' do
      subject.redis= redis
      redis.should_receive(:get).and_return(nil)
      subject.load_credentials.should == nil
    end
  end

  describe 'write credentials' do

    it 'should write credentials' do
      subject.redis= redis
      redis.should_receive(:set).and_return('ok')
      subject.write_credentials(credentials_hash).should be_true
    end
  end

end
