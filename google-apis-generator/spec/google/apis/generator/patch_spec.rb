require 'spec_helper'
require 'google/apis/generator'

RSpec.describe 'Google::Apis::Generator with DiscoveryV1 patch' do

  it 'should modify RestMethod if `api_version` is not defined' do
    expect(Google::Apis::Generator::Discovery::RestMethod.method_defined? :update_discovery!).to eql(true)
  end
end
