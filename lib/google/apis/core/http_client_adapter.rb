require 'httpclient'
require 'hurley'
require 'hurley/client'

module Google
  module Apis
    module Core
      # HTTPClient adapter for Hurley.
      class HttpClientAdapter

        def call(request)
          client = ::HTTPClient.new
          configure_client(client, request)

          begin
            ::Hurley::Response.new(request) do |res|
              http_res = client.request(request.verb.to_s.upcase, request.url.to_s, nil, request.body_io, request.header.to_hash, false) do |http_res, chunk|
                copy_response(http_res, res)
                res.receive_body(chunk)
              end
              copy_response(http_res, res)
            end
          rescue ::HTTPClient::TimeoutError, Errno::ETIMEDOUT
            raise ::Hurley::Timeout, $!
          rescue ::HTTPClient::BadResponseError => err
            if err.message.include?('status 407')
              raise ::Hurley::ConnectionFailed, %{407 "Proxy Authentication Required "}
            else
              raise Hurley::ClientError, $!
            end
          rescue Errno::ECONNREFUSED, EOFError
            raise ::Hurley::ConnectionFailed, $!
          rescue => err
            if defined?(OpenSSL) && OpenSSL::SSL::SSLError === err
              raise Hurley::SSLError, err
            else
              raise
            end
          end
        end

        def copy_response(http_res, res)
          unless res.status_code
            res.status_code = http_res.status.to_i
            http_res.header.all.each do |(k,v)|
              res.header[k] = v
            end
          end
        end

        def configure_client(client, request)
          client.transparent_gzip_decompression = true
          if request.options.proxy
            proxy = request.options.proxy
            client.proxy = sprintf('%s:%d', proxy.host, proxy.port)
            if proxy.user && proxy.password
              client.set_proxy_auth proxy.user, proxy.password
            end
          end
          if request.options.timeout
            client.connect_timeout = request.options.timeout
            client.receive_timeout = request.options.timeout
            client.send_timeout = request.options.timeout
          end
          if request.options.open_timeout
            client.connect_timeout = request.options.open_timeout
            client.send_timeout = request.options.open_timeout
          end
          ssl_config = client.ssl_config
          ssl_opts = request.ssl_options
          ssl_config.verify_mode = ssl_opts.openssl_verify_mode
          ssl_config.cert_store = ssl_opts.openssl_cert_store
          ssl_config.add_trust_ca ssl_opts.ca_file if ssl_opts.ca_file
          ssl_config.add_trust_ca ssl_opts.ca_path if ssl_opts.ca_path
          ssl_config.client_cert = ssl_opts.openssl_client_cert if ssl_opts.openssl_client_cert
          ssl_config.client_key = ssl_opts.openssl_client_key if ssl_opts.openssl_client_key
          ssl_config.verify_depth = ssl_opts.verify_depth if ssl_opts.verify_depth
        end
      end
    end
  end
end
