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

  it 'should initialize'

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
        subject.authorize
      end

    end
    describe 'without credentials' do

      it 'should return false' do
        subject.should_receive(:load_credentials).and_return({})
        subject.authorize.should be_false
      end
    end
  end


  describe 'write_credentials' do

    it 'should store credentials to var'

    it 'should call store to write credentials'

    it 'should not call store to write credentials'

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
    it 'should call store to load credentials'

  end

end
