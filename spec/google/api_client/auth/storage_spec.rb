require 'spec_helper'
require_relative '../../../../lib/google/api_client'
require_relative '../../../../lib/google/api_client/auth/storage'

describe Google::APIClient::Storage do
  let(:client) { Google::APIClient.new(:application_name => 'API Client Tests') }
  let(:root_path) { File.expand_path(File.join(__FILE__, '..', '..', '..')) }
  let(:json_file) { File.expand_path(File.join(root_path, 'fixtures', 'files', 'auth_stored_credentials.json')) }

  let(:store) { double }
  let(:client_stub) { double }
  subject { Google::APIClient::Storage.new(store) }

  describe 'authorize' do
    it 'should authorize' do
      subject.should respond_to(:authorization)
      subject.store.should == store
    end
  end

  describe 'authorize' do
    describe 'with credentials' do

      it 'should initialize a new OAuth Client' do
        subject.should_receive(:load_credentials).and_return({:first => 'a dummy'})
        client_stub.stub(:issued_at=)
        client_stub.stub(:expired?).and_return(false)
        Signet::OAuth2::Client.should_receive(:new).and_return(client_stub)
        subject.should_not_receive(:refresh_authorization)
        subject.authorize
      end

      it 'should refresh authorization' do
        subject.should_receive(:load_credentials).and_return({:first => 'a dummy'})
        client_stub.stub(:issued_at=)
        client_stub.stub(:expired?).and_return(true)
        Signet::OAuth2::Client.should_receive(:new).and_return(client_stub)
        subject.should_receive(:refresh_authorization)
        auth = subject.authorize
        auth.should == subject.authorization
        auth.should_not be_nil
      end
    end

    describe 'without credentials' do

      it 'should return nil' do
        subject.authorization.should be_nil
        subject.should_receive(:load_credentials).and_return({})
        subject.authorize.should be_nil
        subject.authorization.should be_nil
      end
    end
  end

  describe 'write_credentials' do
    it 'should call store to write credentials' do
      authorization_stub = double
      authorization_stub.should_receive(:refresh_token).and_return(true)
      subject.should_receive(:credentials_hash)
      subject.store.should_receive(:write_credentials)
      subject.write_credentials(authorization_stub)
      subject.authorization.should == authorization_stub
    end

    it 'should not call store to write credentials' do
      subject.should_not_receive(:credentials_hash)
      subject.store.should_not_receive(:write_credentials)
      expect {
        subject.write_credentials()
      }.not_to raise_error
    end
    it 'should not call store to write credentials' do
      subject.should_not_receive(:credentials_hash)
      subject.store.should_not_receive(:write_credentials)
      expect {
        subject.write_credentials('something')
      }.not_to raise_error
    end

  end

  describe 'refresh_authorization' do
    it 'should call refresh and write credentials' do
      subject.should_receive(:write_credentials)
      authorization_stub = double
      subject.stub(:authorization).and_return(authorization_stub)
      authorization_stub.should_receive(:refresh!).and_return(true)
      subject.refresh_authorization
    end
  end

  describe 'load_credentials' do
    it 'should call store to load credentials' do
      subject.store.should_receive(:load_credentials)
      subject.send(:load_credentials)
    end
  end

  describe 'credentials_hash' do
    it 'should return an hash' do
      authorization_stub = double
      authorization_stub.should_receive(:access_token)
      authorization_stub.should_receive(:client_id)
      authorization_stub.should_receive(:client_secret)
      authorization_stub.should_receive(:expires_in)
      authorization_stub.should_receive(:refresh_token)
      authorization_stub.should_receive(:issued_at).and_return('100')
      subject.stub(:authorization).and_return(authorization_stub)
      credentials = subject.send(:credentials_hash)
      credentials.should include(:access_token)
      credentials.should include(:authorization_uri)
      credentials.should include(:client_id)
      credentials.should include(:client_secret)
      credentials.should include(:expires_in)
      credentials.should include(:refresh_token)
      credentials.should include(:token_credential_uri)
      credentials.should include(:issued_at)
    end
  end
end
