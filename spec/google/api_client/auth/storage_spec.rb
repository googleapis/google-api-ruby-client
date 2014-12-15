require 'spec_helper'

require 'google/api_client'
require 'google/api_client/version'

describe Google::APIClient::Storage do
  let(:client) { Google::APIClient.new(:application_name => 'API Client Tests') }
  let(:root_path) { File.expand_path(File.join(__FILE__, '..', '..', '..')) }
  let(:json_file) { File.expand_path(File.join(root_path, 'fixtures', 'files', 'auth_stored_credentials.json')) }

  let(:store) { double }
  let(:client_stub) { double }
  subject { Google::APIClient::Storage.new(store) }

  describe 'authorize' do
    it 'should authorize' do
      expect(subject).to respond_to(:authorization)
      expect(subject.store).to be == store
    end
  end

  describe 'authorize' do
    describe 'with credentials' do

      it 'should initialize a new OAuth Client' do
        expect(subject).to receive(:load_credentials).and_return({:first => 'a dummy'})
        expect(client_stub).to receive(:issued_at=)
        expect(client_stub).to receive(:expired?).and_return(false)
        expect(Signet::OAuth2::Client).to receive(:new).and_return(client_stub)
        expect(subject).not_to receive(:refresh_authorization)
        subject.authorize
      end

      it 'should refresh authorization' do
        expect(subject).to receive(:load_credentials).and_return({:first => 'a dummy'})
        expect(client_stub).to receive(:issued_at=)
        expect(client_stub).to receive(:expired?).and_return(true)
        expect(Signet::OAuth2::Client).to receive(:new).and_return(client_stub)
        expect(subject).to receive(:refresh_authorization)
        auth = subject.authorize
        expect(auth).to be == subject.authorization
        expect(auth).not_to be_nil
      end
    end

    describe 'without credentials' do

      it 'should return nil' do
        expect(subject.authorization).to be_nil
        expect(subject).to receive(:load_credentials).and_return({})
        expect(subject.authorize).to be_nil
        expect(subject.authorization).to be_nil
      end
    end
  end

  describe 'write_credentials' do
    it 'should call store to write credentials' do
      authorization_stub = double
      expect(authorization_stub).to receive(:refresh_token).and_return(true)
      expect(subject).to receive(:credentials_hash)
      expect(subject.store).to receive(:write_credentials)
      subject.write_credentials(authorization_stub)
      expect(subject.authorization).to be == authorization_stub
    end

    it 'should not call store to write credentials' do
      expect(subject).not_to receive(:credentials_hash)
      expect(subject.store).not_to receive(:write_credentials)
      expect {
        subject.write_credentials()
      }.not_to raise_error
    end
    it 'should not call store to write credentials' do
      expect(subject).not_to receive(:credentials_hash)
      expect(subject.store).not_to receive(:write_credentials)
      expect {
        subject.write_credentials('something')
      }.not_to raise_error
    end

  end

  describe 'refresh_authorization' do
    it 'should call refresh and write credentials' do
      expect(subject).to receive(:write_credentials)
      authorization_stub = double
      expect(subject).to receive(:authorization).and_return(authorization_stub)
      expect(authorization_stub).to receive(:refresh!).and_return(true)
      subject.refresh_authorization
    end
  end

  describe 'load_credentials' do
    it 'should call store to load credentials' do
      expect(subject.store).to receive(:load_credentials)
      subject.send(:load_credentials)
    end
  end

  describe 'credentials_hash' do
    it 'should return an hash' do
      authorization_stub = double
      expect(authorization_stub).to receive(:access_token)
      expect(authorization_stub).to receive(:client_id)
      expect(authorization_stub).to receive(:client_secret)
      expect(authorization_stub).to receive(:expires_in)
      expect(authorization_stub).to receive(:refresh_token)
      expect(authorization_stub).to receive(:issued_at).and_return('100')
      allow(subject).to receive(:authorization).and_return(authorization_stub)
      credentials = subject.send(:credentials_hash)
      expect(credentials).to include(:access_token)
      expect(credentials).to include(:authorization_uri)
      expect(credentials).to include(:client_id)
      expect(credentials).to include(:client_secret)
      expect(credentials).to include(:expires_in)
      expect(credentials).to include(:refresh_token)
      expect(credentials).to include(:token_credential_uri)
      expect(credentials).to include(:issued_at)
    end
  end
end
