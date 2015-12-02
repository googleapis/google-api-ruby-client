#
# Copyright (c) 2015 Rick Olson
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
require 'hurley'
require 'hurley/client'
require 'hurley/connection'
require 'net/https'

# Temporary monkey patch for streaming downloads. These are fixed in HEAD,
# but pending a 0.3 release.
if Hurley::VERSION == '0.2'
  module Hurley
    class Response
      def location
        @location ||= begin
          return unless loc = @header[:location]
          verb = STATUS_FORCE_GET.include?(status_code) ? :get : request.verb
          statuses, receiver = request.send(:body_receiver)
          new_request = Request.new(verb, request.url.join(Url.parse(loc)), request.header, request.body, request.options, request.ssl_options)
          new_request.on_body(*statuses, &receiver) unless receiver.is_a?(Hurley::BodyReceiver)
          new_request
        end
      end
    end

    class Connection
      def call(request)
        net_http_connection(request) do |http|
          begin
            Response.new(request) do |res|
              perform_request(http, request, res)

              # net/http only raises exception on 407 with ssl...?
              if res.status_code == 407
                raise ConnectionFailed, %(407 "Proxy Authentication Required")
              end
            end
          rescue *NET_HTTP_EXCEPTIONS => err
            if defined?(OpenSSL) && OpenSSL::SSL::SSLError === err
              raise SSLError, err
            else
              raise ConnectionFailed, err
            end
          end
        end

      rescue ::Timeout::Error => err
        raise Timeout, err
      end

      private

      def net_http_request(request)
        http_req = Net::HTTPGenericRequest.new(
          request.verb.to_s.upcase, # request method
          !!request.body,           # is there a request body
          :head != request.verb,    # is there a response body
          request.url.request_uri,  # request uri path
          request.header,           # request headers
        )

        if body = request.body_io
          http_req.body_stream = body
        end

        http_req
      end

      def perform_request(http, request, res)
        http.request(net_http_request(request)) do |http_res|
          res.status_code = http_res.code.to_i
          http_res.each_header do |key, value|
            res.header[key] = value
          end

          if :get == request.verb
            http_res.read_body { |chunk| res.receive_body(chunk) }
          else
            res.receive_body(http_res.body)
          end
        end
      end
    end
  end
end
