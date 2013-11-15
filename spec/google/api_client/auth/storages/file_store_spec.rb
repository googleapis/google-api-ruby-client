require 'spec_helper'
require_relative '../../../../../lib/google/api_client/auth/storages/file_store'

describe Google::APIClient::FileStore do
  let(:client) { Google::APIClient.new(:application_name => 'API Client Tests') }
  let(:root_path) { File.expand_path(File.join(__FILE__, '..', '..', '..')) }
  let(:json_file) { File.expand_path(File.join(root_path, 'fixtures', 'files', 'auth_stored_credentials.json')) }

  it 'should initialize'

  it 'should load_credentials'

end
