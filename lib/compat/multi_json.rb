require 'multi_json'

if !MultiJson.respond_to?(:load) || MultiJson.method(:load).owner == Kernel
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
