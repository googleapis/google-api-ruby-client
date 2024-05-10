require 'spec_helper'
require 'google/apis/discovery_v1'

RSpec.describe 'Google::Apis::Generator with DiscoveryV1 patch' do
  RestMethod = Google::Apis::DiscoveryV1::RestMethod

  it 'should modify RestMethod if `api_version` is not defined' do
    RestMethod.remove_method(:api_version) if RestMethod.method_defined? :api_version
    require 'google/apis/generator'
    expect(Google::Apis::Generator::Discovery::RestMethod.method_defined? :api_version).to eql(true)
  end
end
