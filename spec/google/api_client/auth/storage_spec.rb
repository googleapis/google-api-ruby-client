require 'spec_helper'
require_relative '../../../../lib/google/api_client'
require_relative '../../../../lib/google/api_client/auth/storage'

describe Google::APIClient::Storage do
  let(:client) { Google::APIClient.new(:application_name => 'API Client Tests') }
  let(:root_path) { File.expand_path(File.join(__FILE__, '..', '..', '..')) }
  let(:json_file) { File.expand_path(File.join(root_path, 'fixtures', 'files', 'auth_stored_credentials.json')) }

  it 'should initialize'

  describe 'authorize' do
    it 'should authorize'
  end


  describe 'write_credentials' do

    it 'should store credentials to var'

    it 'should call store to write credentials'

    it 'should not call store to write credentials'

  end

  describe 'refresh_authorization' do

    it 'should call refresh and write credentials'

  end

  describe 'load_credentials' do
    it 'should call store to load credentials'

  end

end
