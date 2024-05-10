require 'spec_helper'

module Google
  module Apis
    module DiscoveryV1
      class RestMethod
      end
    end
  end
end

RSpec.describe 'Google::Apis::Generator with DiscoveryV1 patch' do

  it 'should modify RestMethod if `api_version` is not defined' do
    require 'google/apis/generator'
    expect(defined? Google::Apis::Generator::Discovery::RestMethod.new.api_version).to be_truthy
  end
end
