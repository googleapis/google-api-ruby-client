require 'spec_helper'

require 'google/api_client'
require 'google/api_client/version'

describe Google::APIClient::FileStore do
  let(:root_path) { File.expand_path(File.join(__FILE__, '..','..','..', '..','..')) }
  let(:json_file) { File.expand_path(File.join(root_path, 'fixtures', 'files', 'auth_stored_credentials.json')) }

  let(:credentials_hash) {{
      "access_token"=>"my_access_token",
      "authorization_uri"=>"https://accounts.google.com/o/oauth2/auth",
      "client_id"=>"123456_test_client_id@.apps.googleusercontent.com",
      "client_secret"=>"123456_client_secret",
      "expires_in"=>3600,
      "refresh_token"=>"my_refresh_token",
      "token_credential_uri"=>"https://accounts.google.com/o/oauth2/token",
      "issued_at"=>1384440275
  }}

  subject{Google::APIClient::FileStore.new('a file path')}

  it 'should have a path' do
    expect(subject.path).to be == 'a file path'
    subject.path = 'an other file path'
    expect(subject.path).to be == 'an other file path'
  end

  it 'should load credentials' do
    subject.path = json_file
    credentials = subject.load_credentials
    expect(credentials).to include('access_token', 'authorization_uri', 'refresh_token')
  end

  it 'should write credentials' do
    io_stub = StringIO.new
    expect(subject).to receive(:open).and_return(io_stub)
    subject.write_credentials(credentials_hash)
  end
end
