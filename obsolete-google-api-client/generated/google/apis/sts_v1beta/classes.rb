# Copyright 2015 Google Inc.
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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module StsV1beta
      
      # Request message for ExchangeToken.
      class GoogleIdentityStsV1betaExchangeTokenRequest
        include Google::Apis::Core::Hashable
      
        # The full resource name of the identity provider. For example, `//iam.
        # googleapis.com/projects//workloadIdentityPools//providers/`. Required when
        # exchanging an external credential for a Google access token.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Required. The grant type. Must be `urn:ietf:params:oauth:grant-type:token-
        # exchange`, which indicates a token exchange.
        # Corresponds to the JSON property `grantType`
        # @return [String]
        attr_accessor :grant_type
      
        # A set of features that Security Token Service supports, in addition to the
        # standard OAuth 2.0 token exchange, formatted as a serialized JSON object of
        # Options.
        # Corresponds to the JSON property `options`
        # @return [String]
        attr_accessor :options
      
        # Required. The type of security token. Must be `urn:ietf:params:oauth:token-
        # type:access_token`, which indicates an OAuth 2.0 access token.
        # Corresponds to the JSON property `requestedTokenType`
        # @return [String]
        attr_accessor :requested_token_type
      
        # The OAuth 2.0 scopes to include on the resulting access token, formatted as a
        # list of space-delimited, case-sensitive strings. Required when exchanging an
        # external credential for a Google access token.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Required. The input token. This token is a either an external credential
        # issued by a workload identity pool provider, or a short-lived access token
        # issued by Google. If the token is an OIDC JWT, it must use the JWT format
        # defined in [RFC 7523](https://tools.ietf.org/html/rfc7523), and the `
        # subject_token_type` must be `urn:ietf:params:oauth:token-type:jwt`. The
        # following headers are required: - `kid`: The identifier of the signing key
        # securing the JWT. - `alg`: The cryptographic algorithm securing the JWT. Must
        # be `RS256`. The following payload fields are required. For more information,
        # see [RFC 7523, Section 3](https://tools.ietf.org/html/rfc7523#section-3): - `
        # iss`: The issuer of the token. The issuer must provide a discovery document at
        # the URL `/.well-known/openid-configuration`, where `` is the value of this
        # field. The document must be formatted according to section 4.2 of the [OIDC 1.
        # 0 Discovery specification](https://openid.net/specs/openid-connect-discovery-
        # 1_0.html#ProviderConfigurationResponse). - `iat`: The issue time, in seconds,
        # since the Unix epoch. Must be in the past. - `exp`: The expiration time, in
        # seconds, since the Unix epoch. Must be less than 48 hours after `iat`. Shorter
        # expiration times are more secure. If possible, we recommend setting an
        # expiration time less than 6 hours. - `sub`: The identity asserted in the JWT. -
        # `aud`: Configured by the mapper policy. The default value is the service
        # account's unique ID. Example header: ``` ` "alg": "RS256", "kid": "us-east-11"
        # ` ``` Example payload: ``` ` "iss": "https://accounts.google.com", "iat":
        # 1517963104, "exp": 1517966704, "aud": "113475438248934895348", "sub": "
        # 113475438248934895348", "my_claims": ` "additional_claim": "value" ` ` ``` If `
        # subject_token` is an AWS token, it must be a serialized, [signed](https://docs.
        # aws.amazon.com/general/latest/gr/signing_aws_api_requests.html) request to the
        # AWS [`GetCallerIdentity()`](https://docs.aws.amazon.com/STS/latest/
        # APIReference/API_GetCallerIdentity) method. Format the request as URL-encoded
        # JSON, and set the `subject_token_type` parameter to `urn:ietf:params:aws:token-
        # type:aws4_request`. The following parameters are required: - `url`: The URL of
        # the AWS STS endpoint for `GetCallerIdentity()`, such as `https://sts.amazonaws.
        # com?Action=GetCallerIdentity&Version=2011-06-15`. Regional endpoints are also
        # supported. - `method`: The HTTP request method: `POST`. - `headers`: The HTTP
        # request headers, which must include: - `Authorization`: The request signature.
        # - `x-amz-date`: The time you will send the request, formatted as an [ISO8601
        # Basic](https://docs.aws.amazon.com/general/latest/gr/sigv4_elements.html#
        # sigv4_elements_date) string. This is typically set to the current time and
        # used to prevent replay attacks. - `host`: The hostname of the `url` field; for
        # example, `sts.amazonaws.com`. - `x-goog-cloud-target-resource`: The full,
        # canonical resource name of the workload identity pool provider, with or
        # without an `https:` prefix. To help ensure data integrity, we recommend
        # including this header in the `SignedHeaders` field of the signed request. For
        # example: //iam.googleapis.com/projects//locations//workloadIdentityPools//
        # providers/ https://iam.googleapis.com/projects//locations//
        # workloadIdentityPools//providers/ If you are using temporary security
        # credentials provided by AWS, you must also include the header `x-amz-security-
        # token`, with the value ``. The following example shows a signed, serialized
        # request: ``` ` "headers":[ `"key": "x-amz-date", "value": "20200815T015049Z"`,
        # `"key": "Authorization", "value": "AWS4-HMAC-SHA256+Credential=$credential,+
        # SignedHeaders=host;x-amz-date;x-goog-cloud-target-resource,+Signature=$
        # signature"`, `"key": "x-goog-cloud-target-resource", "value": "//iam.
        # googleapis.com/projects//locations//workloadIdentityPools//providers/"`, `"key"
        # : "host", "value": "sts.amazonaws.com"` . ], "method":"POST", "url":"https://
        # sts.amazonaws.com?Action=GetCallerIdentity&Version=2011-06-15" ` ``` You can
        # also use a Google-issued OAuth 2.0 access token with this field to obtain an
        # access token with new security attributes applied, such as a Credential Access
        # Boundary. In this case, set `subject_token_type` to `urn:ietf:params:oauth:
        # token-type:access_token`. If an access token already contains security
        # attributes, you cannot apply additional security attributes.
        # Corresponds to the JSON property `subjectToken`
        # @return [String]
        attr_accessor :subject_token
      
        # Required. `urn:ietf:params:oauth:token-type:access_token`.
        # Corresponds to the JSON property `subjectTokenType`
        # @return [String]
        attr_accessor :subject_token_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @grant_type = args[:grant_type] if args.key?(:grant_type)
          @options = args[:options] if args.key?(:options)
          @requested_token_type = args[:requested_token_type] if args.key?(:requested_token_type)
          @scope = args[:scope] if args.key?(:scope)
          @subject_token = args[:subject_token] if args.key?(:subject_token)
          @subject_token_type = args[:subject_token_type] if args.key?(:subject_token_type)
        end
      end
      
      # Response message for ExchangeToken.
      class GoogleIdentityStsV1betaExchangeTokenResponse
        include Google::Apis::Core::Hashable
      
        # An OAuth 2.0 security token, issued by Google, in response to the token
        # exchange request. Tokens can vary in size, depending in part on the size of
        # mapped claims, up to a maximum of 12288 bytes (12 KB). Google reserves the
        # right to change the token size and the maximum length at any time.
        # Corresponds to the JSON property `access_token`
        # @return [String]
        attr_accessor :access_token
      
        # The amount of time, in seconds, between the time when the `access_token` was
        # issued and the time when the `access_token` will expire. This field is absent
        # when the `subject_token` in the request is a Google-issued, short-lived access
        # token. In this case, the `access_token` has the same expiration time as the `
        # subject_token`.
        # Corresponds to the JSON property `expires_in`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # The token type. Always matches the value of `requested_token_type` from the
        # request.
        # Corresponds to the JSON property `issued_token_type`
        # @return [String]
        attr_accessor :issued_token_type
      
        # The type of `access_token`. Always has the value `Bearer`.
        # Corresponds to the JSON property `token_type`
        # @return [String]
        attr_accessor :token_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @issued_token_type = args[:issued_token_type] if args.key?(:issued_token_type)
          @token_type = args[:token_type] if args.key?(:token_type)
        end
      end
    end
  end
end
