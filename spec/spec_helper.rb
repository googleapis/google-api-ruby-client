$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))
$LOAD_PATH.uniq!

require 'rspec'
require 'faraday'

Faraday::Adapter.load_middleware(:test)

module Faraday
  class Connection
    def verify
      if app.kind_of?(Faraday::Adapter::Test)
        app.stubs.verify_stubbed_calls
      else
        raise TypeError, "Expected test adapter"
      end
    end
  end
end

module ConnectionHelpers
  def stub_connection(&block)
    stubs = Faraday::Adapter::Test::Stubs.new do |stub|
      block.call(stub)
    end
    connection = Faraday.new do |builder|
      builder.options.params_encoder = Faraday::FlatParamsEncoder
      builder.adapter(:test, stubs)
    end
  end
end

module JSONMatchers
  class EqualsJson
    def initialize(expected)
      @expected = JSON.parse(expected)
    end
    def matches?(target)
      @target = JSON.parse(target)
      @target.eql?(@expected)
    end
    def failure_message
      "expected #{@target.inspect} to be #{@expected}"
    end
    def negative_failure_message
      "expected #{@target.inspect} not to be #{@expected}"
    end
  end
  
  def be_json(expected)
    EqualsJson.new(expected)
  end
end

RSpec.configure do |config|
end
