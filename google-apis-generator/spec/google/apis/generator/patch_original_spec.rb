require 'spec_helper'
require 'google/apis/discovery_v1'

RSpec.describe 'Google::Apis::Generator with DiscoveryV1 patch' do
  RestMethod = Google::Apis::DiscoveryV1::RestMethod

  it 'should not modify RestMethod if `api_version` is already defined' do
    RestMethod.define_singleton_method(:api_version) { "v1_05082024" }
    require 'google/apis/generator'
    expect(Google::Apis::Generator::Discovery::RestMethod.method_defined? :update_discovery!).to eql(false)
  end
end
