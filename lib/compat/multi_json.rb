gem 'multi_json', '>= 1.0.0'
require 'multi_json'

unless MultiJson.respond_to?(:load)
  module MultiJson
    class <<self
      alias :load :decode
    end
  end
end
unless MultiJson.respond_to?(:dump)
  module MultiJson
    class <<self
      alias :dump :encode
    end
  end
end
