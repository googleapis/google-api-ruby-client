require 'faraday'
require 'zlib'
 
module Google
  class APIClient
    class Charset < Faraday::Response::Middleware
      include Google::APIClient::Logging

      def charset_for_content_type(type)
        if type
          m = type.match(/(?:charset|encoding)="?([a-z0-9-]+)"?/i)
          if m
            return Encoding.find(m[1])
          end
        end
        nil
      end

      def adjust_encoding(env)
        charset = charset_for_content_type(env[:response_headers]['content-type'])
        if charset && env[:body].encoding != charset
          env[:body].force_encoding(charset)
        end
      end
      
      def on_complete(env)
        adjust_encoding(env)
      end
    end
  end
end
 
Faraday::Response.register_middleware :charset => Google::APIClient::Charset