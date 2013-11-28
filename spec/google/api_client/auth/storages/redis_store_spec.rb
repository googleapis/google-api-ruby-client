require 'spec_helper'
require_relative '../../../../../lib/google/api_client/auth/storages/redis_store'

describe Google::APIClient::RedisStore do
  let(:json_file) { File.expand_path(File.join(root_path, 'fixtures', 'files', 'auth_stored_credentials.json')) }

  it 'should initialize'

  it 'should load credentials'

  it 'should write credentials'

end
