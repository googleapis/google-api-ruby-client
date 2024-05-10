require 'spec_helper'

module Google
  module Apis
    module DiscoveryV1
      class RestMethod
        attr_accessor :api_version
      end
    end
  end
end

RSpec.describe 'Google::Apis::Generator with DiscoveryV1 patch' do

  it 'should not modify RestMethod if `api_version` is already defined' do
    require 'google/apis/generator'
    expect(defined? Google::Apis::Generator::Discovery::RestMethod.new.update_discovery!).to be_falsy
  end
end
