require 'oauth/request_proxy/base'
require 'addressable/uri'

module OAuth
  module RequestProxy
    class SimpleRequest < OAuth::RequestProxy::Base
      proxies Array

      def method
        return @request[0]
      end

      def uri
        return @request[1]
      end

      def headers
        @headers ||= (begin
          headers_hash = {}
          @request[2].each do |key, value|
            headers_hash[key] = value
          end
          headers_hash
        end)
        return @headers
      end

      def body
        @body ||= (begin
          body_string = ""
          @request[3].each do |chunk|
            body_string += chunk
          end
          body_string
        end)
        return @body
      end

      def parameters
        @parameters ||= (begin
          self.query_parameters.merge(
            self.post_parameters
          )
        end)
        return @parameters
      end

      def query_parameters
        @query_parameters ||= (begin
          Addressable::URI.parse(self.uri).normalize.query_values || {}
        end)
        return @query_parameters
      end

      def post_parameters
        @post_parameters ||= (begin
          # We could be more liberal here and aggressively downcase,
          # but it's cleaner if we force the usage of the canonical form,
          # and we're just going to replace this eventually anyways.
          if self.method == 'POST' && self.headers['Content-Type'] == 
              'application/x-www-form-urlencoded'
            # Even though an Array would be better here, we're stuck using a
            # Hash because that's what the 'oauth' gem expects.
            parameter_hash = {}
            for key, value in Addressable::URI.form_unencode(self.body)
              parameter_hash[key] = value
            end
            parameter_hash
          else
            {}
          end
        end)
        return @post_parameters
      end
      
      def normalized_uri
        @normalized_uri ||= Addressable::URI.parse(self.uri).normalize.to_str
        return @normalized_uri
      end
    end
  end
end
