require 'spec_helper'

require 'google/api_client/auth/installed_app'

describe Google::APIClient::InstalledAppFlow do
  let(:secrets) do 
    file = File.join(FIXTURES_DIR, 'files', 'client_secrets.json')
    Google::APIClient::ClientSecrets.load(file)
  end

  subject(:flow) { Google::APIClient::InstalledAppFlow.new(
    :client_id => secrets.client_id,
    :client_secret => secrets.client_secret, 
    :scope => 'https://www.googleapis.com/auth/drive.metadata.readonly',
    :port => 5000)}

  context 'initialization' do

    it 'should be valid instance' do
      expect(flow).to be_a Google::APIClient::InstalledAppFlow
    end

    it 'should have valid port' do
      expect(flow.instance_variable_get("@port")).to eq 5000
    end

    it 'should have default port' do
      another_flow = Google::APIClient::InstalledAppFlow.new(
        :client_id => secrets.client_id,
        :client_secret => secrets.client_secret,
        :scope => 'https://www.googleapis.com/auth/drive.metadata.readonly') 
      expect(another_flow.instance_variable_get("@port")).to eq 9292
    end
    
    it 'should have valid client_id' do
      auth = flow.instance_variable_get "@authorization"
      expect(auth.client_id).to eq "898243283568.apps.googleusercontent.com"
    end
    
  end
end
