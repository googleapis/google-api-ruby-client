gem 'multi_json', '>= 1.0.0'
require 'multi_json'

if !MultiJson.respond_to?(:load) || [Kernel, ActiveSupport::Dependencies::Loadable].include?(MultiJson.method(:load).owner)
  module MultiJson
    class <<self
      alias :load :decode
    end
  end
end
if !MultiJson.respond_to?(:dump)
  module MultiJson
    class <<self
      alias :dump :encode
    end
  end
end
