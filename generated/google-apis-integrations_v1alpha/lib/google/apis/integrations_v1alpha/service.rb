# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module IntegrationsV1alpha
      # Application Integration API
      #
      # 
      #
      # @example
      #    require 'google/apis/integrations_v1alpha'
      #
      #    Integrations = Google::Apis::IntegrationsV1alpha # Alias the module
      #    service = Integrations::IntegrationsService.new
      #
      # @see https://cloud.google.com/application-integration
      class IntegrationsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://integrations.googleapis.com/', '',
                client_name: 'google-apis-integrations_v1alpha',
                client_version: Google::Apis::IntegrationsV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Receives the auth code and auth config id to combine that with the client id
        # and secret to retrieve access tokens from the token endpoint. Returns either a
        # success or error message when it's done.
        # @param [String] code
        #   The auth code for the given request
        # @param [String] gcp_project_id
        #   The gcp project id of the request
        # @param [String] product
        #   Which product sends the request
        # @param [String] redirect_uri
        #   Redirect uri of the auth code request
        # @param [String] state
        #   The auth config id for the given request
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaGenerateTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaGenerateTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_callback_token(code: nil, gcp_project_id: nil, product: nil, redirect_uri: nil, state: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/callback:generateToken', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaGenerateTokenResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaGenerateTokenResponse
          command.query['code'] = code unless code.nil?
          command.query['gcpProjectId'] = gcp_project_id unless gcp_project_id.nil?
          command.query['product'] = product unless product.nil?
          command.query['redirectUri'] = redirect_uri unless redirect_uri.nil?
          command.query['state'] = state unless state.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates the regions for which Connector Platform is provisioned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enumerate_connector_platform_region(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/connectorPlatformRegions:enumerate', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Apps Script project.
        # @param [String] parent
        #   Required. The project that the executed integration belongs to.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest] google_cloud_integrations_v1alpha_create_apps_script_project_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_apps_script_project(parent, google_cloud_integrations_v1alpha_create_apps_script_project_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/appsScriptProjects', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_create_apps_script_project_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Links a existing Apps Script project.
        # @param [String] parent
        #   Required. The project that the executed integration belongs to.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest] google_cloud_integrations_v1alpha_link_apps_script_project_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def link_project_location_apps_script_project(parent, google_cloud_integrations_v1alpha_link_apps_script_project_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/appsScriptProjects:link', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_link_apps_script_project_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an auth config record. Fetch corresponding credentials for specific
        # auth types, e.g. access token for OAuth 2.0, JWT token for JWT. Encrypt the
        # auth config with Cloud KMS and store the encrypted credentials in Spanner.
        # Returns the encrypted auth config.
        # @param [String] parent
        #   Required. "projects/`project`/locations/`location`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] google_cloud_integrations_v1alpha_auth_config_object
        # @param [String] client_certificate_encrypted_private_key
        #   The ssl certificate encoded in PEM format. This string must include the begin
        #   header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        #   MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        #   BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        #   MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        #   MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        #   vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        #   sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        #   xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        #   BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        #   Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        #   Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        #   JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        #   5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        #   wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # @param [String] client_certificate_passphrase
        #   'passphrase' should be left unset if private key is not encrypted. Note that '
        #   passphrase' is not the password for web server, but an extra layer of security
        #   to protected private key.
        # @param [String] client_certificate_ssl_certificate
        #   The ssl certificate encoded in PEM format. This string must include the begin
        #   header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        #   MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        #   BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        #   MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        #   MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        #   vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        #   sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        #   xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        #   BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        #   Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        #   Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        #   JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        #   5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        #   wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_auth_config(parent, google_cloud_integrations_v1alpha_auth_config_object = nil, client_certificate_encrypted_private_key: nil, client_certificate_passphrase: nil, client_certificate_ssl_certificate: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/authConfigs', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.request_object = google_cloud_integrations_v1alpha_auth_config_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['clientCertificate.encryptedPrivateKey'] = client_certificate_encrypted_private_key unless client_certificate_encrypted_private_key.nil?
          command.query['clientCertificate.passphrase'] = client_certificate_passphrase unless client_certificate_passphrase.nil?
          command.query['clientCertificate.sslCertificate'] = client_certificate_ssl_certificate unless client_certificate_ssl_certificate.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an auth config.
        # @param [String] name
        #   Required. The name that is associated with the AuthConfig.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_auth_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND
        # exception will be thrown. Returns the decrypted auth config.
        # @param [String] name
        #   Required. The name that is associated with the AuthConfig.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_auth_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all auth configs that match the filter. Restrict to auth configs belong
        # to the current client only.
        # @param [String] parent
        #   Required. The client, which owns this collection of AuthConfigs.
        # @param [String] filter
        #   Filtering as supported in https://developers.google.com/authorized-buyers/apis/
        #   guides/v2/list-filters.
        # @param [Fixnum] page_size
        #   The size of entries in the response. If unspecified, defaults to 100.
        # @param [String] page_token
        #   The token returned in the previous response.
        # @param [String] read_mask
        #   The mask which specifies fields that need to be returned in the AuthConfig's
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListAuthConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListAuthConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_auth_configs(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/authConfigs', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListAuthConfigsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListAuthConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an auth config. If credential is updated, fetch the encrypted auth
        # config from Spanner, decrypt with Cloud KMS key, update the credential fields,
        # re-encrypt with Cloud KMS key and update the Spanner record. For other fields,
        # directly update the Spanner record. Returns the encrypted auth config.
        # @param [String] name
        #   Resource name of the SFDC instance projects/`project`/locations/`location`/
        #   authConfigs/`authConfig`.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] google_cloud_integrations_v1alpha_auth_config_object
        # @param [String] client_certificate_encrypted_private_key
        #   The ssl certificate encoded in PEM format. This string must include the begin
        #   header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        #   MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        #   BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        #   MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        #   MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        #   vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        #   sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        #   xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        #   BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        #   Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        #   Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        #   JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        #   5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        #   wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # @param [String] client_certificate_passphrase
        #   'passphrase' should be left unset if private key is not encrypted. Note that '
        #   passphrase' is not the password for web server, but an extra layer of security
        #   to protected private key.
        # @param [String] client_certificate_ssl_certificate
        #   The ssl certificate encoded in PEM format. This string must include the begin
        #   header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        #   MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        #   BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        #   MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        #   MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        #   vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        #   sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        #   xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        #   BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        #   Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        #   Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        #   JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        #   5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        #   wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # @param [String] update_mask
        #   Field mask specifying the fields in the above AuthConfig that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_auth_config(name, google_cloud_integrations_v1alpha_auth_config_object = nil, client_certificate_encrypted_private_key: nil, client_certificate_passphrase: nil, client_certificate_ssl_certificate: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.request_object = google_cloud_integrations_v1alpha_auth_config_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig
          command.params['name'] = name unless name.nil?
          command.query['clientCertificate.encryptedPrivateKey'] = client_certificate_encrypted_private_key unless client_certificate_encrypted_private_key.nil?
          command.query['clientCertificate.passphrase'] = client_certificate_passphrase unless client_certificate_passphrase.nil?
          command.query['clientCertificate.sslCertificate'] = client_certificate_ssl_certificate unless client_certificate_ssl_certificate.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a certificates in the specified project.
        # @param [String] name
        #   Required. The certificate to retrieve. Format: projects/`project`/locations/`
        #   location`/certificates/`certificate`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_certificate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the available entities and actions associated with a Connection.
        # @param [String] name
        #   Required. ConnectionSchemaMetadata name. Format: projects/`project`/locations/`
        #   location`/connections/`connection`/connectionSchemaMetadata
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_connection_schema_metadata(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Connections in a given project and location.
        # @param [String] parent
        #   Required. Parent resource of the Connection, of the form: `projects/*/
        #   locations/*`
        # @param [String] filter
        #   Filter.
        # @param [String] order_by
        #   Order by parameters.
        # @param [Fixnum] page_size
        #   Page size.
        # @param [String] page_token
        #   Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connections(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/connections', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListConnectionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListConnectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the JSON schemas for the inputs and outputs of actions, filtered by
        # action name.
        # @param [String] parent
        #   Required. Parent resource of RuntimeActionSchema. Format: projects/`project`/
        #   locations/`location`/connections/`connection`
        # @param [String] filter
        #   Filter. Only the action field with literal equality operator is supported.
        # @param [Fixnum] page_size
        #   Page size.
        # @param [String] page_token
        #   Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_runtime_action_schemas(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/runtimeActionSchemas', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the JSON schemas for the properties of runtime entities, filtered by
        # entity name.
        # @param [String] parent
        #   Required. Parent resource of RuntimeEntitySchema. Format: projects/`project`/
        #   locations/`location`/connections/`connection`
        # @param [String] filter
        #   Filter. Only the entity field with literal equality operator is supported.
        # @param [Fixnum] page_size
        #   Page size.
        # @param [String] page_token
        #   Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_runtime_entity_schemas(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/runtimeEntitySchemas', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the selected integration and all versions inside
        # @param [String] name
        #   Required. The location resource of the request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_integration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes integrations synchronously by passing the trigger id in the request
        # body. The request is not returned until the requested executions are either
        # fulfilled or experienced an error. If the integration name is not specified (
        # passing `-`), all of the associated integration under the given trigger_id
        # will be executed. Otherwise only the specified integration for the given `
        # trigger_id` is executed. This is helpful for execution the integration from UI.
        # @param [String] name
        #   Required. The integration resource name.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest] google_cloud_integrations_v1alpha_execute_integrations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_project_location_integration(name, google_cloud_integrations_v1alpha_execute_integrations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:execute', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_execute_integrations_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all integrations in the specified project.
        # @param [String] parent
        #   Required. Project and location from which the integrations should be listed.
        #   Format: projects/`project`
        # @param [String] filter
        #   Filter on fields of IntegrationVersion. Fields can be compared with literal
        #   values by use of ":" (containment), "=" (equality), ">" (greater), "<" (less
        #   than), >=" (greater than or equal to), "<=" (less than or equal to), and "!=" (
        #   inequality) operators. Negation, conjunction, and disjunction are written
        #   using NOT, AND, and OR keywords. For example, organization_id=\"1\" AND state=
        #   ACTIVE AND description:"test". Filtering cannot be performed on repeated
        #   fields like `task_config`.
        # @param [String] order_by
        #   The results would be returned in order you specified here. Supported sort keys
        #   are: Descending sort order by "last_modified_time", "created_time", "
        #   snapshot_number". Ascending sort order by the integration name.
        # @param [Fixnum] page_size
        #   The page size for the resquest.
        # @param [String] page_token
        #   The page token for the resquest.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_integrations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/integrations', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Schedules an integration for execution by passing the trigger id and the
        # scheduled time in the request body.
        # @param [String] name
        #   The integration resource name.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest] google_cloud_integrations_v1alpha_schedule_integrations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def schedule_project_location_integration(name, google_cloud_integrations_v1alpha_schedule_integrations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:schedule', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_schedule_integrations_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the results of all the integration executions. The response includes the
        # same information as the [execution log](https://cloud.google.com/application-
        # integration/docs/viewing-logs) in the Integration UI.
        # @param [String] parent
        #   Required. The parent resource name of the integration execution.
        # @param [String] filter
        #   Optional. Standard filter field, we support filtering on all fields in
        #   EventExecutionParamIndexes table. All fields support for EQUALS, in additional:
        #   CreateTimestamp support for LESS_THAN, GREATER_THAN ParameterKey,
        #   ParameterValue, ParameterType support for HAS For example: "parameter_value"
        #   HAS \"parameter1\" Also supports operators like AND, OR, NOT For example,
        #   trigger_id=\"id1\" AND event_execution_state=\"FAILED\"
        # @param [String] filter_params_custom_filter
        #   Optional user-provided custom filter.
        # @param [Fixnum] filter_params_end_time
        #   End timestamp.
        # @param [Array<String>, String] filter_params_event_statuses
        #   List of possible event statuses.
        # @param [String] filter_params_execution_id
        #   Execution id.
        # @param [String] filter_params_parameter_key
        #   Param key. DEPRECATED. User parameter_pair_key instead.
        # @param [String] filter_params_parameter_pair_key
        #   Param key in the key value pair filter.
        # @param [String] filter_params_parameter_pair_value
        #   Param value in the key value pair filter.
        # @param [String] filter_params_parameter_type
        #   Param type.
        # @param [String] filter_params_parameter_value
        #   Param value. DEPRECATED. User parameter_pair_value instead.
        # @param [Fixnum] filter_params_start_time
        #   Start timestamp.
        # @param [Array<String>, String] filter_params_task_statuses
        #   List of possible task statuses.
        # @param [String] filter_params_workflow_name
        #   Workflow name.
        # @param [String] order_by
        #   Optional. The results would be returned in order you specified here. Currently
        #   supporting "last_modified_time" and "create_time".
        # @param [Fixnum] page_size
        #   Optional. The size of entries in the response.
        # @param [String] page_token
        #   Optional. The token returned in the previous response.
        # @param [String] read_mask
        #   Optional. View mask for the response data. If set, only the field specified
        #   will be returned as part of the result. If not set, all fields in event
        #   execution info will be filled and returned.
        # @param [Boolean] refresh_acl
        #   Optional. If true, the service will use the most recent acl information to
        #   list event execution infos and renew the acl cache. Note that fetching the
        #   most recent acl is synchronous, so it will increase RPC call latency.
        # @param [Boolean] truncate_params
        #   Optional. If true, the service will truncate the params to only keep the first
        #   1000 characters of string params and empty the executions in order to make
        #   response smaller. Only works for UI and when the params fields are not
        #   filtered out.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListExecutionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListExecutionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_integration_executions(parent, filter: nil, filter_params_custom_filter: nil, filter_params_end_time: nil, filter_params_event_statuses: nil, filter_params_execution_id: nil, filter_params_parameter_key: nil, filter_params_parameter_pair_key: nil, filter_params_parameter_pair_value: nil, filter_params_parameter_type: nil, filter_params_parameter_value: nil, filter_params_start_time: nil, filter_params_task_statuses: nil, filter_params_workflow_name: nil, order_by: nil, page_size: nil, page_token: nil, read_mask: nil, refresh_acl: nil, truncate_params: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/executions', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListExecutionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListExecutionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['filterParams.customFilter'] = filter_params_custom_filter unless filter_params_custom_filter.nil?
          command.query['filterParams.endTime'] = filter_params_end_time unless filter_params_end_time.nil?
          command.query['filterParams.eventStatuses'] = filter_params_event_statuses unless filter_params_event_statuses.nil?
          command.query['filterParams.executionId'] = filter_params_execution_id unless filter_params_execution_id.nil?
          command.query['filterParams.parameterKey'] = filter_params_parameter_key unless filter_params_parameter_key.nil?
          command.query['filterParams.parameterPairKey'] = filter_params_parameter_pair_key unless filter_params_parameter_pair_key.nil?
          command.query['filterParams.parameterPairValue'] = filter_params_parameter_pair_value unless filter_params_parameter_pair_value.nil?
          command.query['filterParams.parameterType'] = filter_params_parameter_type unless filter_params_parameter_type.nil?
          command.query['filterParams.parameterValue'] = filter_params_parameter_value unless filter_params_parameter_value.nil?
          command.query['filterParams.startTime'] = filter_params_start_time unless filter_params_start_time.nil?
          command.query['filterParams.taskStatuses'] = filter_params_task_statuses unless filter_params_task_statuses.nil?
          command.query['filterParams.workflowName'] = filter_params_workflow_name unless filter_params_workflow_name.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['refreshAcl'] = refresh_acl unless refresh_acl.nil?
          command.query['truncateParams'] = truncate_params unless truncate_params.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # * Lifts suspension for advanced suspension task. Fetch corresponding
        # suspension with provided suspension Id, resolve suspension, and set up
        # suspension result for the Suspension Task.
        # @param [String] name
        #   Required. The resource that the suspension belongs to. "projects/`project`/
        #   locations/`location`/products/`product`/integrations/`integration`/executions/`
        #   execution`/suspensions/`suspenion`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionRequest] google_cloud_integrations_v1alpha_lift_suspension_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lift_project_location_integration_execution_suspension(name, google_cloud_integrations_v1alpha_lift_suspension_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:lift', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_lift_suspension_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # * Lists suspensions associated with a specific execution. Only those with
        # permissions to resolve the relevant suspensions will be able to view them.
        # @param [String] parent
        #   Required. projects/`gcp_project_id`/locations/`location`/products/`product`/
        #   integrations/`integration_name`/executions/`execution_name`
        # @param [String] filter
        #   Standard filter field.
        # @param [String] order_by
        #   Field name to order by.
        # @param [Fixnum] page_size
        #   Maximum number of entries in the response.
        # @param [String] page_token
        #   Token to retrieve a specific page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSuspensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSuspensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_integration_execution_suspensions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/suspensions', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSuspensionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSuspensionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # * Resolves (lifts/rejects) any number of suspensions. If the integration is
        # already running, only the status of the suspension is updated. Otherwise, the
        # suspended integration will begin execution again.
        # @param [String] name
        #   Required. projects/`gcp_project_id`/locations/`location`/products/`product`/
        #   integrations/`integration_name`/executions/`execution_name`/suspensions/`
        #   suspension_id`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionRequest] google_cloud_integrations_v1alpha_resolve_suspension_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_project_location_integration_execution_suspension(name, google_cloud_integrations_v1alpha_resolve_suspension_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:resolve', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_resolve_suspension_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a integration with a draft version in the specified project.
        # @param [String] parent
        #   Required. The parent resource where this version will be created. Format:
        #   projects/`project`/locations/`location`/integrations/`integration`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] google_cloud_integrations_v1alpha_integration_version_object
        # @param [Boolean] new_integration
        #   Set this flag to true, if draft version is to be created for a brand new
        #   integration. False, if the request is for an existing integration. For
        #   backward compatibility reasons, even if this flag is set to `false` and no
        #   existing integration is found, a new draft integration will still be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_integration_version(parent, google_cloud_integrations_v1alpha_integration_version_object = nil, new_integration: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/versions', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.request_object = google_cloud_integrations_v1alpha_integration_version_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['newIntegration'] = new_integration unless new_integration.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Soft-deletes the integration. Changes the status of the integration to
        # ARCHIVED. If the integration being ARCHIVED is tagged as "HEAD", the tag is
        # removed from this snapshot and set to the previous non-ARCHIVED snapshot. The
        # PUBLISH_REQUESTED, DUE_FOR_DELETION tags are removed too. This RPC throws an
        # exception if the version being deleted is DRAFT, and if the `locked_by` user
        # is not the same as the user performing the Delete. Audit fields updated
        # include last_modified_timestamp, last_modified_by. Any existing lock is
        # released when Deleting a integration. Currently, there is no undelete
        # mechanism.
        # @param [String] name
        #   Required. The version to delete. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_integration_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downloads an integration. Retrieves the `IntegrationVersion` for a given `
        # integration_id` and returns the response as a string.
        # @param [String] name
        #   Required. The version to download. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [String] file_format
        #   File format for download request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_project_location_integration_version(name, file_format: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:download', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fileFormat'] = file_format unless file_format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a integration in the specified project.
        # @param [String] name
        #   Required. The version to retrieve. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_integration_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all integration versions in the specified project.
        # @param [String] parent
        #   Required. The parent resource where this version will be created. Format:
        #   projects/`project`/locations/`location`/integrations/`integration`
        #   Specifically, when parent equals: 1. projects//locations//integrations/,
        #   Meaning: "List versions (with filter) for a particular integration". 2.
        #   projects//locations//integrations/- Meaning: "List versions (with filter) for
        #   a client within a particular region". 3. projects//locations/-/integrations/-
        #   Meaning: "List versions (with filter) for a client".
        # @param [String] field_mask
        #   The field mask which specifies the particular data to be returned.
        # @param [String] filter
        #   Filter on fields of IntegrationVersion. Fields can be compared with literal
        #   values by use of ":" (containment), "=" (equality), ">" (greater), "<" (less
        #   than), >=" (greater than or equal to), "<=" (less than or equal to), and "!=" (
        #   inequality) operators. Negation, conjunction, and disjunction are written
        #   using NOT, AND, and OR keywords. For example, organization_id=\"1\" AND state=
        #   ACTIVE AND description:"test". Filtering cannot be performed on repeated
        #   fields like `task_config`.
        # @param [String] order_by
        #   The results would be returned in order you specified here. Currently supported
        #   sort keys are: Descending sort order for "last_modified_time", "created_time",
        #   "snapshot_number" Ascending sort order for "name".
        # @param [Fixnum] page_size
        #   The maximum number of versions to return. The service may return fewer than
        #   this value. If unspecified, at most 50 versions will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListIntegrationVersions` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListIntegrationVersions` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_integration_versions(parent, field_mask: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/versions', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a integration with a draft version in the specified project.
        # @param [String] name
        #   Output only. Auto-generated primary key.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] google_cloud_integrations_v1alpha_integration_version_object
        # @param [String] update_mask
        #   Field mask specifying the fields in the above integration that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_integration_version(name, google_cloud_integrations_v1alpha_integration_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.request_object = google_cloud_integrations_v1alpha_integration_version_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This RPC throws an exception if the integration is in ARCHIVED or ACTIVE state.
        # This RPC throws an exception if the version being published is DRAFT, and if
        # the `locked_by` user is not the same as the user performing the Publish. Audit
        # fields updated include last_published_timestamp, last_published_by,
        # last_modified_timestamp, last_modified_by. Any existing lock is on this
        # integration is released.
        # @param [String] name
        #   Required. The version to publish. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest] google_cloud_integrations_v1alpha_publish_integration_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_project_location_integration_version(name, google_cloud_integrations_v1alpha_publish_integration_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:publish', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_publish_integration_version_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears the `locked_by` and `locked_at_timestamp`in the DRAFT version of this
        # integration. It then performs the same action as the
        # CreateDraftIntegrationVersion (i.e., copies the DRAFT version of the
        # integration as a SNAPSHOT and then creates a new DRAFT version with the `
        # locked_by` set to the `user_taking_over` and the `locked_at_timestamp` set to
        # the current timestamp). Both the `locked_by` and `user_taking_over` are
        # notified via email about the takeover. This RPC throws an exception if the
        # integration is not in DRAFT status or if the `locked_by` and `
        # locked_at_timestamp` fields are not set.The TakeoverEdit lock is treated the
        # same as an edit of the integration, and hence shares ACLs with edit. Audit
        # fields updated include last_modified_timestamp, last_modified_by.
        # @param [String] integration_version
        #   Required. The version to take over edit lock. Format: projects/`project`/
        #   locations/`location`/integrations/`integration`/versions/`version`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest] google_cloud_integrations_v1alpha_takeover_edit_lock_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def takeover_project_location_integration_version_edit_lock(integration_version, google_cloud_integrations_v1alpha_takeover_edit_lock_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+integrationVersion}:takeoverEditLock', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_takeover_edit_lock_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse
          command.params['integrationVersion'] = integration_version unless integration_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the status of the ACTIVE integration to SNAPSHOT with a new tag "
        # PREVIOUSLY_PUBLISHED" after validating it. The "HEAD" and "PUBLISH_REQUESTED"
        # tags do not change. This RPC throws an exception if the version being snapshot
        # is not ACTIVE. Audit fields added include action, action_by, action_timestamp.
        # @param [String] name
        #   Required. The version to deactivate. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest] google_cloud_integrations_v1alpha_unpublish_integration_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unpublish_project_location_integration_version(name, google_cloud_integrations_v1alpha_unpublish_integration_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:unpublish', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_unpublish_integration_version_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads an integration. The content can be a previously downloaded integration.
        # Performs the same function as CreateDraftIntegrationVersion, but accepts
        # input in a string format, which holds the complete representation of the
        # IntegrationVersion content.
        # @param [String] parent
        #   Required. The version to upload. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest] google_cloud_integrations_v1alpha_upload_integration_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_project_location_integration_version(parent, google_cloud_integrations_v1alpha_upload_integration_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/versions:upload', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_upload_integration_version_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an auth config record. Fetch corresponding credentials for specific
        # auth types, e.g. access token for OAuth 2.0, JWT token for JWT. Encrypt the
        # auth config with Cloud KMS and store the encrypted credentials in Spanner.
        # Returns the encrypted auth config.
        # @param [String] parent
        #   Required. "projects/`project`/locations/`location`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] google_cloud_integrations_v1alpha_auth_config_object
        # @param [String] client_certificate_encrypted_private_key
        #   The ssl certificate encoded in PEM format. This string must include the begin
        #   header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        #   MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        #   BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        #   MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        #   MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        #   vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        #   sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        #   xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        #   BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        #   Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        #   Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        #   JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        #   5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        #   wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # @param [String] client_certificate_passphrase
        #   'passphrase' should be left unset if private key is not encrypted. Note that '
        #   passphrase' is not the password for web server, but an extra layer of security
        #   to protected private key.
        # @param [String] client_certificate_ssl_certificate
        #   The ssl certificate encoded in PEM format. This string must include the begin
        #   header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        #   MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        #   BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        #   MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        #   MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        #   vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        #   sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        #   xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        #   BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        #   Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        #   Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        #   JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        #   5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        #   wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_product_auth_config(parent, google_cloud_integrations_v1alpha_auth_config_object = nil, client_certificate_encrypted_private_key: nil, client_certificate_passphrase: nil, client_certificate_ssl_certificate: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/authConfigs', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.request_object = google_cloud_integrations_v1alpha_auth_config_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['clientCertificate.encryptedPrivateKey'] = client_certificate_encrypted_private_key unless client_certificate_encrypted_private_key.nil?
          command.query['clientCertificate.passphrase'] = client_certificate_passphrase unless client_certificate_passphrase.nil?
          command.query['clientCertificate.sslCertificate'] = client_certificate_ssl_certificate unless client_certificate_ssl_certificate.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an auth config.
        # @param [String] name
        #   Required. The name that is associated with the AuthConfig.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_product_auth_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND
        # exception will be thrown. Returns the decrypted auth config.
        # @param [String] name
        #   Required. The name that is associated with the AuthConfig.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_product_auth_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all auth configs that match the filter. Restrict to auth configs belong
        # to the current client only.
        # @param [String] parent
        #   Required. The client, which owns this collection of AuthConfigs.
        # @param [String] filter
        #   Filtering as supported in https://developers.google.com/authorized-buyers/apis/
        #   guides/v2/list-filters.
        # @param [Fixnum] page_size
        #   The size of entries in the response. If unspecified, defaults to 100.
        # @param [String] page_token
        #   The token returned in the previous response.
        # @param [String] read_mask
        #   The mask which specifies fields that need to be returned in the AuthConfig's
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListAuthConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListAuthConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_auth_configs(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/authConfigs', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListAuthConfigsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListAuthConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an auth config. If credential is updated, fetch the encrypted auth
        # config from Spanner, decrypt with Cloud KMS key, update the credential fields,
        # re-encrypt with Cloud KMS key and update the Spanner record. For other fields,
        # directly update the Spanner record. Returns the encrypted auth config.
        # @param [String] name
        #   Resource name of the SFDC instance projects/`project`/locations/`location`/
        #   authConfigs/`authConfig`.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] google_cloud_integrations_v1alpha_auth_config_object
        # @param [String] client_certificate_encrypted_private_key
        #   The ssl certificate encoded in PEM format. This string must include the begin
        #   header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        #   MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        #   BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        #   MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        #   MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        #   vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        #   sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        #   xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        #   BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        #   Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        #   Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        #   JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        #   5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        #   wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # @param [String] client_certificate_passphrase
        #   'passphrase' should be left unset if private key is not encrypted. Note that '
        #   passphrase' is not the password for web server, but an extra layer of security
        #   to protected private key.
        # @param [String] client_certificate_ssl_certificate
        #   The ssl certificate encoded in PEM format. This string must include the begin
        #   header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        #   MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        #   BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        #   MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        #   MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        #   vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        #   sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        #   xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        #   BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        #   Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        #   Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        #   JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        #   5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        #   wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # @param [String] update_mask
        #   Field mask specifying the fields in the above AuthConfig that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_product_auth_config(name, google_cloud_integrations_v1alpha_auth_config_object = nil, client_certificate_encrypted_private_key: nil, client_certificate_passphrase: nil, client_certificate_ssl_certificate: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.request_object = google_cloud_integrations_v1alpha_auth_config_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaAuthConfig
          command.params['name'] = name unless name.nil?
          command.query['clientCertificate.encryptedPrivateKey'] = client_certificate_encrypted_private_key unless client_certificate_encrypted_private_key.nil?
          command.query['clientCertificate.passphrase'] = client_certificate_passphrase unless client_certificate_passphrase.nil?
          command.query['clientCertificate.sslCertificate'] = client_certificate_ssl_certificate unless client_certificate_ssl_certificate.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new certificate. The certificate will be registered to the trawler
        # service and will be encrypted using cloud KMS and stored in Spanner Returns
        # the certificate.
        # @param [String] parent
        #   Required. "projects/`project`/locations/`location`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate] google_cloud_integrations_v1alpha_certificate_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_product_certificate(parent, google_cloud_integrations_v1alpha_certificate_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/certificates', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate::Representation
          command.request_object = google_cloud_integrations_v1alpha_certificate_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a certificate
        # @param [String] name
        #   Required. The name that is associated with the Certificate.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_product_certificate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a certificates in the specified project.
        # @param [String] name
        #   Required. The certificate to retrieve. Format: projects/`project`/locations/`
        #   location`/certificates/`certificate`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_product_certificate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all the certificates that match the filter. Restrict to certificate of
        # current client only.
        # @param [String] parent
        #   Required. The client, which owns this collection of Certificates.
        # @param [String] filter
        #   Filtering as supported in https://developers.google.com/authorized-buyers/apis/
        #   guides/v2/list-filters.
        # @param [Fixnum] page_size
        #   The size of entries in the response. If unspecified, defaults to 100.
        # @param [String] page_token
        #   The token returned in the previous response.
        # @param [String] read_mask
        #   The mask which specifies fields that need to be returned in the Certificate's
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListCertificatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListCertificatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_certificates(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/certificates', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListCertificatesResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListCertificatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the certificate by id. If new certificate file is updated, it will
        # register with the trawler service, re-encrypt with cloud KMS and update the
        # Spanner record. Other fields will directly update the Spanner record. Returns
        # the Certificate.
        # @param [String] name
        #   Output only. Auto generated primary key
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate] google_cloud_integrations_v1alpha_certificate_object
        # @param [String] update_mask
        #   Field mask specifying the fields in the above Certificate that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_product_certificate(name, google_cloud_integrations_v1alpha_certificate_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate::Representation
          command.request_object = google_cloud_integrations_v1alpha_certificate_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCertificate
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the selected integration and all versions inside
        # @param [String] name
        #   Required. The location resource of the request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_product_integration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes integrations synchronously by passing the trigger id in the request
        # body. The request is not returned until the requested executions are either
        # fulfilled or experienced an error. If the integration name is not specified (
        # passing `-`), all of the associated integration under the given trigger_id
        # will be executed. Otherwise only the specified integration for the given `
        # trigger_id` is executed. This is helpful for execution the integration from UI.
        # @param [String] name
        #   Required. The integration resource name.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest] google_cloud_integrations_v1alpha_execute_integrations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_project_location_product_integration(name, google_cloud_integrations_v1alpha_execute_integrations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:execute', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_execute_integrations_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all integrations in the specified project.
        # @param [String] parent
        #   Required. Project and location from which the integrations should be listed.
        #   Format: projects/`project`
        # @param [String] filter
        #   Filter on fields of IntegrationVersion. Fields can be compared with literal
        #   values by use of ":" (containment), "=" (equality), ">" (greater), "<" (less
        #   than), >=" (greater than or equal to), "<=" (less than or equal to), and "!=" (
        #   inequality) operators. Negation, conjunction, and disjunction are written
        #   using NOT, AND, and OR keywords. For example, organization_id=\"1\" AND state=
        #   ACTIVE AND description:"test". Filtering cannot be performed on repeated
        #   fields like `task_config`.
        # @param [String] order_by
        #   The results would be returned in order you specified here. Supported sort keys
        #   are: Descending sort order by "last_modified_time", "created_time", "
        #   snapshot_number". Ascending sort order by the integration name.
        # @param [Fixnum] page_size
        #   The page size for the resquest.
        # @param [String] page_token
        #   The page token for the resquest.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_integrations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/integrations', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Schedules an integration for execution by passing the trigger id and the
        # scheduled time in the request body.
        # @param [String] name
        #   The integration resource name.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest] google_cloud_integrations_v1alpha_schedule_integrations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def schedule_project_location_product_integration(name, google_cloud_integrations_v1alpha_schedule_integrations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:schedule', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_schedule_integrations_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancellation of an execution
        # @param [String] name
        #   Required. The execution resource name. Format: projects/`gcp_project_id`/
        #   locations/`location`/products/`product`/integrations/`integration_id`/
        #   executions/`execution_id`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCancelExecutionRequest] google_cloud_integrations_v1alpha_cancel_execution_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCancelExecutionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCancelExecutionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_product_integration_execution(name, google_cloud_integrations_v1alpha_cancel_execution_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:cancel', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCancelExecutionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_cancel_execution_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCancelExecutionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaCancelExecutionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an execution in the specified project.
        # @param [String] name
        #   Required. The execution resource name. Format: projects/`gcp_project_id`/
        #   locations/`location`/products/`product`/integrations/`integration_id`/
        #   executions/`execution_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecution] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecution]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_product_integration_execution(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecution::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaExecution
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the results of all the integration executions. The response includes the
        # same information as the [execution log](https://cloud.google.com/application-
        # integration/docs/viewing-logs) in the Integration UI.
        # @param [String] parent
        #   Required. The parent resource name of the integration execution.
        # @param [String] filter
        #   Optional. Standard filter field, we support filtering on all fields in
        #   EventExecutionParamIndexes table. All fields support for EQUALS, in additional:
        #   CreateTimestamp support for LESS_THAN, GREATER_THAN ParameterKey,
        #   ParameterValue, ParameterType support for HAS For example: "parameter_value"
        #   HAS \"parameter1\" Also supports operators like AND, OR, NOT For example,
        #   trigger_id=\"id1\" AND event_execution_state=\"FAILED\"
        # @param [String] filter_params_custom_filter
        #   Optional user-provided custom filter.
        # @param [Fixnum] filter_params_end_time
        #   End timestamp.
        # @param [Array<String>, String] filter_params_event_statuses
        #   List of possible event statuses.
        # @param [String] filter_params_execution_id
        #   Execution id.
        # @param [String] filter_params_parameter_key
        #   Param key. DEPRECATED. User parameter_pair_key instead.
        # @param [String] filter_params_parameter_pair_key
        #   Param key in the key value pair filter.
        # @param [String] filter_params_parameter_pair_value
        #   Param value in the key value pair filter.
        # @param [String] filter_params_parameter_type
        #   Param type.
        # @param [String] filter_params_parameter_value
        #   Param value. DEPRECATED. User parameter_pair_value instead.
        # @param [Fixnum] filter_params_start_time
        #   Start timestamp.
        # @param [Array<String>, String] filter_params_task_statuses
        #   List of possible task statuses.
        # @param [String] filter_params_workflow_name
        #   Workflow name.
        # @param [String] order_by
        #   Optional. The results would be returned in order you specified here. Currently
        #   supporting "last_modified_time" and "create_time".
        # @param [Fixnum] page_size
        #   Optional. The size of entries in the response.
        # @param [String] page_token
        #   Optional. The token returned in the previous response.
        # @param [String] read_mask
        #   Optional. View mask for the response data. If set, only the field specified
        #   will be returned as part of the result. If not set, all fields in event
        #   execution info will be filled and returned.
        # @param [Boolean] refresh_acl
        #   Optional. If true, the service will use the most recent acl information to
        #   list event execution infos and renew the acl cache. Note that fetching the
        #   most recent acl is synchronous, so it will increase RPC call latency.
        # @param [Boolean] truncate_params
        #   Optional. If true, the service will truncate the params to only keep the first
        #   1000 characters of string params and empty the executions in order to make
        #   response smaller. Only works for UI and when the params fields are not
        #   filtered out.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListExecutionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListExecutionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_integration_executions(parent, filter: nil, filter_params_custom_filter: nil, filter_params_end_time: nil, filter_params_event_statuses: nil, filter_params_execution_id: nil, filter_params_parameter_key: nil, filter_params_parameter_pair_key: nil, filter_params_parameter_pair_value: nil, filter_params_parameter_type: nil, filter_params_parameter_value: nil, filter_params_start_time: nil, filter_params_task_statuses: nil, filter_params_workflow_name: nil, order_by: nil, page_size: nil, page_token: nil, read_mask: nil, refresh_acl: nil, truncate_params: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/executions', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListExecutionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListExecutionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['filterParams.customFilter'] = filter_params_custom_filter unless filter_params_custom_filter.nil?
          command.query['filterParams.endTime'] = filter_params_end_time unless filter_params_end_time.nil?
          command.query['filterParams.eventStatuses'] = filter_params_event_statuses unless filter_params_event_statuses.nil?
          command.query['filterParams.executionId'] = filter_params_execution_id unless filter_params_execution_id.nil?
          command.query['filterParams.parameterKey'] = filter_params_parameter_key unless filter_params_parameter_key.nil?
          command.query['filterParams.parameterPairKey'] = filter_params_parameter_pair_key unless filter_params_parameter_pair_key.nil?
          command.query['filterParams.parameterPairValue'] = filter_params_parameter_pair_value unless filter_params_parameter_pair_value.nil?
          command.query['filterParams.parameterType'] = filter_params_parameter_type unless filter_params_parameter_type.nil?
          command.query['filterParams.parameterValue'] = filter_params_parameter_value unless filter_params_parameter_value.nil?
          command.query['filterParams.startTime'] = filter_params_start_time unless filter_params_start_time.nil?
          command.query['filterParams.taskStatuses'] = filter_params_task_statuses unless filter_params_task_statuses.nil?
          command.query['filterParams.workflowName'] = filter_params_workflow_name unless filter_params_workflow_name.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['refreshAcl'] = refresh_acl unless refresh_acl.nil?
          command.query['truncateParams'] = truncate_params unless truncate_params.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # * Lifts suspension for advanced suspension task. Fetch corresponding
        # suspension with provided suspension Id, resolve suspension, and set up
        # suspension result for the Suspension Task.
        # @param [String] name
        #   Required. The resource that the suspension belongs to. "projects/`project`/
        #   locations/`location`/products/`product`/integrations/`integration`/executions/`
        #   execution`/suspensions/`suspenion`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionRequest] google_cloud_integrations_v1alpha_lift_suspension_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lift_project_location_product_integration_execution_suspension(name, google_cloud_integrations_v1alpha_lift_suspension_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:lift', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_lift_suspension_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaLiftSuspensionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # * Lists suspensions associated with a specific execution. Only those with
        # permissions to resolve the relevant suspensions will be able to view them.
        # @param [String] parent
        #   Required. projects/`gcp_project_id`/locations/`location`/products/`product`/
        #   integrations/`integration_name`/executions/`execution_name`
        # @param [String] filter
        #   Standard filter field.
        # @param [String] order_by
        #   Field name to order by.
        # @param [Fixnum] page_size
        #   Maximum number of entries in the response.
        # @param [String] page_token
        #   Token to retrieve a specific page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSuspensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSuspensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_integration_execution_suspensions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/suspensions', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSuspensionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSuspensionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # * Resolves (lifts/rejects) any number of suspensions. If the integration is
        # already running, only the status of the suspension is updated. Otherwise, the
        # suspended integration will begin execution again.
        # @param [String] name
        #   Required. projects/`gcp_project_id`/locations/`location`/products/`product`/
        #   integrations/`integration_name`/executions/`execution_name`/suspensions/`
        #   suspension_id`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionRequest] google_cloud_integrations_v1alpha_resolve_suspension_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_project_location_product_integration_execution_suspension(name, google_cloud_integrations_v1alpha_resolve_suspension_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:resolve', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_resolve_suspension_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaResolveSuspensionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a integration with a draft version in the specified project.
        # @param [String] parent
        #   Required. The parent resource where this version will be created. Format:
        #   projects/`project`/locations/`location`/integrations/`integration`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] google_cloud_integrations_v1alpha_integration_version_object
        # @param [Boolean] new_integration
        #   Set this flag to true, if draft version is to be created for a brand new
        #   integration. False, if the request is for an existing integration. For
        #   backward compatibility reasons, even if this flag is set to `false` and no
        #   existing integration is found, a new draft integration will still be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_product_integration_version(parent, google_cloud_integrations_v1alpha_integration_version_object = nil, new_integration: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/versions', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.request_object = google_cloud_integrations_v1alpha_integration_version_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['newIntegration'] = new_integration unless new_integration.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Soft-deletes the integration. Changes the status of the integration to
        # ARCHIVED. If the integration being ARCHIVED is tagged as "HEAD", the tag is
        # removed from this snapshot and set to the previous non-ARCHIVED snapshot. The
        # PUBLISH_REQUESTED, DUE_FOR_DELETION tags are removed too. This RPC throws an
        # exception if the version being deleted is DRAFT, and if the `locked_by` user
        # is not the same as the user performing the Delete. Audit fields updated
        # include last_modified_timestamp, last_modified_by. Any existing lock is
        # released when Deleting a integration. Currently, there is no undelete
        # mechanism.
        # @param [String] name
        #   Required. The version to delete. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_product_integration_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downloads an integration. Retrieves the `IntegrationVersion` for a given `
        # integration_id` and returns the response as a string.
        # @param [String] name
        #   Required. The version to download. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [String] file_format
        #   File format for download request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_project_location_product_integration_version(name, file_format: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:download', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fileFormat'] = file_format unless file_format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a integration in the specified project.
        # @param [String] name
        #   Required. The version to retrieve. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_product_integration_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all integration versions in the specified project.
        # @param [String] parent
        #   Required. The parent resource where this version will be created. Format:
        #   projects/`project`/locations/`location`/integrations/`integration`
        #   Specifically, when parent equals: 1. projects//locations//integrations/,
        #   Meaning: "List versions (with filter) for a particular integration". 2.
        #   projects//locations//integrations/- Meaning: "List versions (with filter) for
        #   a client within a particular region". 3. projects//locations/-/integrations/-
        #   Meaning: "List versions (with filter) for a client".
        # @param [String] field_mask
        #   The field mask which specifies the particular data to be returned.
        # @param [String] filter
        #   Filter on fields of IntegrationVersion. Fields can be compared with literal
        #   values by use of ":" (containment), "=" (equality), ">" (greater), "<" (less
        #   than), >=" (greater than or equal to), "<=" (less than or equal to), and "!=" (
        #   inequality) operators. Negation, conjunction, and disjunction are written
        #   using NOT, AND, and OR keywords. For example, organization_id=\"1\" AND state=
        #   ACTIVE AND description:"test". Filtering cannot be performed on repeated
        #   fields like `task_config`.
        # @param [String] order_by
        #   The results would be returned in order you specified here. Currently supported
        #   sort keys are: Descending sort order for "last_modified_time", "created_time",
        #   "snapshot_number" Ascending sort order for "name".
        # @param [Fixnum] page_size
        #   The maximum number of versions to return. The service may return fewer than
        #   this value. If unspecified, at most 50 versions will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListIntegrationVersions` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListIntegrationVersions` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_integration_versions(parent, field_mask: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/versions', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a integration with a draft version in the specified project.
        # @param [String] name
        #   Output only. Auto-generated primary key.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] google_cloud_integrations_v1alpha_integration_version_object
        # @param [String] update_mask
        #   Field mask specifying the fields in the above integration that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_product_integration_version(name, google_cloud_integrations_v1alpha_integration_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.request_object = google_cloud_integrations_v1alpha_integration_version_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationVersion
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This RPC throws an exception if the integration is in ARCHIVED or ACTIVE state.
        # This RPC throws an exception if the version being published is DRAFT, and if
        # the `locked_by` user is not the same as the user performing the Publish. Audit
        # fields updated include last_published_timestamp, last_published_by,
        # last_modified_timestamp, last_modified_by. Any existing lock is on this
        # integration is released.
        # @param [String] name
        #   Required. The version to publish. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest] google_cloud_integrations_v1alpha_publish_integration_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_project_location_product_integration_version(name, google_cloud_integrations_v1alpha_publish_integration_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:publish', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_publish_integration_version_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears the `locked_by` and `locked_at_timestamp`in the DRAFT version of this
        # integration. It then performs the same action as the
        # CreateDraftIntegrationVersion (i.e., copies the DRAFT version of the
        # integration as a SNAPSHOT and then creates a new DRAFT version with the `
        # locked_by` set to the `user_taking_over` and the `locked_at_timestamp` set to
        # the current timestamp). Both the `locked_by` and `user_taking_over` are
        # notified via email about the takeover. This RPC throws an exception if the
        # integration is not in DRAFT status or if the `locked_by` and `
        # locked_at_timestamp` fields are not set.The TakeoverEdit lock is treated the
        # same as an edit of the integration, and hence shares ACLs with edit. Audit
        # fields updated include last_modified_timestamp, last_modified_by.
        # @param [String] integration_version
        #   Required. The version to take over edit lock. Format: projects/`project`/
        #   locations/`location`/integrations/`integration`/versions/`version`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest] google_cloud_integrations_v1alpha_takeover_edit_lock_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def takeover_project_location_product_integration_version_edit_lock(integration_version, google_cloud_integrations_v1alpha_takeover_edit_lock_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+integrationVersion}:takeoverEditLock', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_takeover_edit_lock_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse
          command.params['integrationVersion'] = integration_version unless integration_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the status of the ACTIVE integration to SNAPSHOT with a new tag "
        # PREVIOUSLY_PUBLISHED" after validating it. The "HEAD" and "PUBLISH_REQUESTED"
        # tags do not change. This RPC throws an exception if the version being snapshot
        # is not ACTIVE. Audit fields added include action, action_by, action_timestamp.
        # @param [String] name
        #   Required. The version to deactivate. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`/versions/`version`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest] google_cloud_integrations_v1alpha_unpublish_integration_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unpublish_project_location_product_integration_version(name, google_cloud_integrations_v1alpha_unpublish_integration_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:unpublish', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_unpublish_integration_version_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads an integration. The content can be a previously downloaded integration.
        # Performs the same function as CreateDraftIntegrationVersion, but accepts
        # input in a string format, which holds the complete representation of the
        # IntegrationVersion content.
        # @param [String] parent
        #   Required. The version to upload. Format: projects/`project`/locations/`
        #   location`/integrations/`integration`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest] google_cloud_integrations_v1alpha_upload_integration_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_project_location_product_integration_version(parent, google_cloud_integrations_v1alpha_upload_integration_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/versions:upload', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest::Representation
          command.request_object = google_cloud_integrations_v1alpha_upload_integration_version_request_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an IntegrationTemplateVersion.
        # @param [String] parent
        #   Required. The parent resource where this TemplateVersion will be created.
        #   Format: projects/`project`/location/`location`/product/`product`/
        #   integrationtemplates/`integrationtemplate`
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion] google_cloud_integrations_v1alpha_integration_template_version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_product_integrationtemplate_version(parent, google_cloud_integrations_v1alpha_integration_template_version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/versions', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion::Representation
          command.request_object = google_cloud_integrations_v1alpha_integration_template_version_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns an IntegrationTemplateVersion in the specified project.
        # @param [String] name
        #   Required. The TemplateVersion to retrieve. Format: projects/`project`/
        #   locations/`location`/products/`product`/integrationtemplates/`
        #   integrationtemplate`/versions/`version`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_product_integrationtemplate_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaIntegrationTemplateVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all IntegrationTemplateVersions in the specified project.
        # @param [String] parent
        #   Required. Format: projects/`project`/location/`location`/product/`product`/
        #   integrationtemplates/`integrationtemplate`
        # @param [String] filter
        #   Filter syntax: defined in the EBNF grammar.
        # @param [Fixnum] page_size
        #   The maximum number of IntegrationTemplateVersions to return. The service may
        #   return fewer than this value. If unspecified, at most 50 versions will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListIntegrationTemplateVersions` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListIntegrationTemplateVersions` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationTemplateVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationTemplateVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_integrationtemplate_versions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/versions', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationTemplateVersionsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListIntegrationTemplateVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns
        # the sfdc instance.
        # @param [String] parent
        #   Required. "projects/`project`/locations/`location`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] google_cloud_integrations_v1alpha_sfdc_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_product_sfdc_instance(parent, google_cloud_integrations_v1alpha_sfdc_instance_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sfdcInstances', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.request_object = google_cloud_integrations_v1alpha_sfdc_instance_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an sfdc instance.
        # @param [String] name
        #   Required. The name that is associated with the SfdcInstance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_product_sfdc_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception
        # will be thrown.
        # @param [String] name
        #   Required. The name that is associated with the SfdcInstance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_product_sfdc_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all sfdc instances that match the filter. Restrict to sfdc instances
        # belonging to the current client only.
        # @param [String] parent
        #   Required. The client, which owns this collection of SfdcInstances.
        # @param [String] filter
        #   Filtering as supported in https://developers.google.com/authorized-buyers/apis/
        #   guides/v2/list-filters.
        # @param [Fixnum] page_size
        #   The size of entries in the response. If unspecified, defaults to 100.
        # @param [String] page_token
        #   The token returned in the previous response.
        # @param [String] read_mask
        #   The mask which specifies fields that need to be returned in the SfdcInstance's
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_sfdc_instances(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sfdcInstances', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an sfdc instance. Updates the sfdc instance in spanner. Returns the
        # sfdc instance.
        # @param [String] name
        #   Resource name of the SFDC instance projects/`project`/locations/`location`/
        #   sfdcInstances/`sfdcInstance`.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] google_cloud_integrations_v1alpha_sfdc_instance_object
        # @param [String] update_mask
        #   Field mask specifying the fields in the above SfdcInstance that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_product_sfdc_instance(name, google_cloud_integrations_v1alpha_sfdc_instance_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.request_object = google_cloud_integrations_v1alpha_sfdc_instance_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the
        # sfdc channel.
        # @param [String] parent
        #   Required. "projects/`project`/locations/`location`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] google_cloud_integrations_v1alpha_sfdc_channel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_product_sfdc_instance_sfdc_channel(parent, google_cloud_integrations_v1alpha_sfdc_channel_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sfdcChannels', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.request_object = google_cloud_integrations_v1alpha_sfdc_channel_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an sfdc channel.
        # @param [String] name
        #   Required. The name that is associated with the SfdcChannel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_product_sfdc_instance_sfdc_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception
        # will be thrown.
        # @param [String] name
        #   Required. The name that is associated with the SfdcChannel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_product_sfdc_instance_sfdc_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all sfdc channels that match the filter. Restrict to sfdc channels
        # belonging to the current client only.
        # @param [String] parent
        #   Required. The client, which owns this collection of SfdcChannels.
        # @param [String] filter
        #   Filtering as supported in https://developers.google.com/authorized-buyers/apis/
        #   guides/v2/list-filters.
        # @param [Fixnum] page_size
        #   The size of entries in the response. If unspecified, defaults to 100.
        # @param [String] page_token
        #   The token returned in the previous response.
        # @param [String] read_mask
        #   The mask which specifies fields that need to be returned in the SfdcChannel's
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_product_sfdc_instance_sfdc_channels(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sfdcChannels', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an sfdc channel. Updates the sfdc channel in spanner. Returns the sfdc
        # channel.
        # @param [String] name
        #   Resource name of the SFDC channel projects/`project`/locations/`location`/
        #   sfdcInstances/`sfdc_instance`/sfdcChannels/`sfdc_channel`.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] google_cloud_integrations_v1alpha_sfdc_channel_object
        # @param [String] update_mask
        #   Field mask specifying the fields in the above SfdcChannel that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_product_sfdc_instance_sfdc_channel(name, google_cloud_integrations_v1alpha_sfdc_channel_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.request_object = google_cloud_integrations_v1alpha_sfdc_channel_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns
        # the sfdc instance.
        # @param [String] parent
        #   Required. "projects/`project`/locations/`location`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] google_cloud_integrations_v1alpha_sfdc_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_sfdc_instance(parent, google_cloud_integrations_v1alpha_sfdc_instance_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sfdcInstances', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.request_object = google_cloud_integrations_v1alpha_sfdc_instance_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an sfdc instance.
        # @param [String] name
        #   Required. The name that is associated with the SfdcInstance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_sfdc_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an sfdc instance. If the instance doesn't exist, Code.NOT_FOUND exception
        # will be thrown.
        # @param [String] name
        #   Required. The name that is associated with the SfdcInstance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sfdc_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all sfdc instances that match the filter. Restrict to sfdc instances
        # belonging to the current client only.
        # @param [String] parent
        #   Required. The client, which owns this collection of SfdcInstances.
        # @param [String] filter
        #   Filtering as supported in https://developers.google.com/authorized-buyers/apis/
        #   guides/v2/list-filters.
        # @param [Fixnum] page_size
        #   The size of entries in the response. If unspecified, defaults to 100.
        # @param [String] page_token
        #   The token returned in the previous response.
        # @param [String] read_mask
        #   The mask which specifies fields that need to be returned in the SfdcInstance's
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sfdc_instances(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sfdcInstances', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an sfdc instance. Updates the sfdc instance in spanner. Returns the
        # sfdc instance.
        # @param [String] name
        #   Resource name of the SFDC instance projects/`project`/locations/`location`/
        #   sfdcInstances/`sfdcInstance`.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] google_cloud_integrations_v1alpha_sfdc_instance_object
        # @param [String] update_mask
        #   Field mask specifying the fields in the above SfdcInstance that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_sfdc_instance(name, google_cloud_integrations_v1alpha_sfdc_instance_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.request_object = google_cloud_integrations_v1alpha_sfdc_instance_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcInstance
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the
        # sfdc channel.
        # @param [String] parent
        #   Required. "projects/`project`/locations/`location`" format.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] google_cloud_integrations_v1alpha_sfdc_channel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_sfdc_instance_sfdc_channel(parent, google_cloud_integrations_v1alpha_sfdc_channel_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sfdcChannels', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.request_object = google_cloud_integrations_v1alpha_sfdc_channel_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an sfdc channel.
        # @param [String] name
        #   Required. The name that is associated with the SfdcChannel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_sfdc_instance_sfdc_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception
        # will be thrown.
        # @param [String] name
        #   Required. The name that is associated with the SfdcChannel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sfdc_instance_sfdc_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all sfdc channels that match the filter. Restrict to sfdc channels
        # belonging to the current client only.
        # @param [String] parent
        #   Required. The client, which owns this collection of SfdcChannels.
        # @param [String] filter
        #   Filtering as supported in https://developers.google.com/authorized-buyers/apis/
        #   guides/v2/list-filters.
        # @param [Fixnum] page_size
        #   The size of entries in the response. If unspecified, defaults to 100.
        # @param [String] page_token
        #   The token returned in the previous response.
        # @param [String] read_mask
        #   The mask which specifies fields that need to be returned in the SfdcChannel's
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sfdc_instance_sfdc_channels(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sfdcChannels', options)
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an sfdc channel. Updates the sfdc channel in spanner. Returns the sfdc
        # channel.
        # @param [String] name
        #   Resource name of the SFDC channel projects/`project`/locations/`location`/
        #   sfdcInstances/`sfdc_instance`/sfdcChannels/`sfdc_channel`.
        # @param [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] google_cloud_integrations_v1alpha_sfdc_channel_object
        # @param [String] update_mask
        #   Field mask specifying the fields in the above SfdcChannel that have been
        #   modified and need to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_sfdc_instance_sfdc_channel(name, google_cloud_integrations_v1alpha_sfdc_channel_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.request_object = google_cloud_integrations_v1alpha_sfdc_channel_object
          command.response_representation = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel::Representation
          command.response_class = Google::Apis::IntegrationsV1alpha::GoogleCloudIntegrationsV1alphaSfdcChannel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
