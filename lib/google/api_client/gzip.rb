require 'faraday'
require 'zlib'
 
module Google
  class APIClient
    class Gzip < Faraday::Response::Middleware
      include Google::APIClient::Logging
 
      def on_complete(env)
        encoding = env[:response_headers]['content-encoding'].to_s.downcase
        case encoding
        when 'gzip'
          logger.debug { "Decompressing gzip encoded response (#{env[:body].length} bytes)" }        
          env[:body] = Zlib::GzipReader.new(StringIO.new(env[:body])).read
          env[:response_headers].delete('content-encoding')
          logger.debug { "Decompressed (#{env[:body].length} bytes)" }        
        when 'deflate'
          logger.debug{ "Decompressing deflate encoded response (#{env[:body].length} bytes)" }        
          env[:body] = Zlib::Inflate.inflate(env[:body])
          env[:response_headers].delete('content-encoding')
          logger.debug { "Decompressed (#{env[:body].length} bytes)" }        
        end
      end
    end
  end
end
 
Faraday::Response.register_middleware :gzip => Google::APIClient::Gzip