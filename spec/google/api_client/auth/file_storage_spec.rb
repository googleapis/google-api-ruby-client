require 'spec_helper'
require_relative '../../../../lib/google/api_client'
require_relative '../../../../lib/google/api_client/auth/storage'

describe Google::APIClient::FileStorage do
  let(:client) { Google::APIClient.new(:application_name => 'API Client Tests') }
  let(:root_path) { File.expand_path(File.join(__FILE__, '..', '..', '..')) }
  let(:json_file) { File.expand_path(File.join(root_path, 'fixtures', 'files', 'credentials.json')) }

  #file_storage = Google::APIClient::FileStorage.new(CREDENTIAL_STORE_FILE)
  #if file_storage.authorization.nil?
  #  client_secrets = Google::APIClient::ClientSecrets.load
  it 'should initialize' do
    Google::APIClient::FileStorage.any_instance.should_receive(:load_credentials)
    file_storage = Google::APIClient::FileStorage.new(json_file)
    file_storage.path.to_s.should == json_file
  end

  it 'should load_credentials' do
    Google::APIClient::FileStorage.any_instance.should_receive(:load_credentials)

    file_storage = Google::APIClient::FileStorage.new(json_file)
    file_storage.path.to_s.should == json_file
  end

end
