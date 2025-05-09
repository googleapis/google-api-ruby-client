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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DigitalassetlinksV1
      
      # Describes an android app asset.
      class AndroidAppAsset
        include Google::Apis::Core::Hashable
      
        # Describes an X509 certificate.
        # Corresponds to the JSON property `certificate`
        # @return [Google::Apis::DigitalassetlinksV1::CertificateInfo]
        attr_accessor :certificate
      
        # Android App assets are naturally identified by their Java package name. For
        # example, the Google Maps app uses the package name `com.google.android.apps.
        # maps`. REQUIRED
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @package_name = args[:package_name] if args.key?(:package_name)
        end
      end
      
      # Uniquely identifies an asset. A digital asset is an identifiable and
      # addressable online entity that typically provides some service or content.
      # Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.
      class Asset
        include Google::Apis::Core::Hashable
      
        # Describes an android app asset.
        # Corresponds to the JSON property `androidApp`
        # @return [Google::Apis::DigitalassetlinksV1::AndroidAppAsset]
        attr_accessor :android_app
      
        # Describes a web asset.
        # Corresponds to the JSON property `web`
        # @return [Google::Apis::DigitalassetlinksV1::WebAsset]
        attr_accessor :web
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_app = args[:android_app] if args.key?(:android_app)
          @web = args[:web] if args.key?(:web)
        end
      end
      
      # Message used to check for the existence of multiple digital asset links within
      # a single RPC.
      class BulkCheckRequest
        include Google::Apis::Core::Hashable
      
        # If specified, will be used in any given template statement that doesn’t
        # specify a relation.
        # Corresponds to the JSON property `defaultRelation`
        # @return [String]
        attr_accessor :default_relation
      
        # Uniquely identifies an asset. A digital asset is an identifiable and
        # addressable online entity that typically provides some service or content.
        # Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.
        # Corresponds to the JSON property `defaultSource`
        # @return [Google::Apis::DigitalassetlinksV1::Asset]
        attr_accessor :default_source
      
        # Uniquely identifies an asset. A digital asset is an identifiable and
        # addressable online entity that typically provides some service or content.
        # Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.
        # Corresponds to the JSON property `defaultTarget`
        # @return [Google::Apis::DigitalassetlinksV1::Asset]
        attr_accessor :default_target
      
        # Same configuration as in CheckRequest; all statement checks will use the same
        # configuration.
        # Corresponds to the JSON property `returnRelationExtensions`
        # @return [Boolean]
        attr_accessor :return_relation_extensions
        alias_method :return_relation_extensions?, :return_relation_extensions
      
        # List of statements to check. For each statement, you can omit a field if the
        # corresponding default_* field below was supplied. Minimum 1 statement; maximum
        # 1,000 statements. Any additional statements will be ignored.
        # Corresponds to the JSON property `statements`
        # @return [Array<Google::Apis::DigitalassetlinksV1::StatementTemplate>]
        attr_accessor :statements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_relation = args[:default_relation] if args.key?(:default_relation)
          @default_source = args[:default_source] if args.key?(:default_source)
          @default_target = args[:default_target] if args.key?(:default_target)
          @return_relation_extensions = args[:return_relation_extensions] if args.key?(:return_relation_extensions)
          @statements = args[:statements] if args.key?(:statements)
        end
      end
      
      # Response for BulkCheck call. Results are sent in a list in the same order in
      # which they were sent. Individual check errors are described in the appropriate
      # check_results entry. If the entire call fails, the response will include a
      # bulk_error_code field describing the error.
      class BulkCheckResponse
        include Google::Apis::Core::Hashable
      
        # Error code for the entire request. Present only if the entire request failed.
        # Individual check errors will not trigger the presence of this field.
        # Corresponds to the JSON property `bulkErrorCode`
        # @return [String]
        attr_accessor :bulk_error_code
      
        # List of results for each check request. Results are returned in the same order
        # in which they were sent in the request.
        # Corresponds to the JSON property `checkResults`
        # @return [Array<Google::Apis::DigitalassetlinksV1::CheckResponse>]
        attr_accessor :check_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bulk_error_code = args[:bulk_error_code] if args.key?(:bulk_error_code)
          @check_results = args[:check_results] if args.key?(:check_results)
        end
      end
      
      # Describes an X509 certificate.
      class CertificateInfo
        include Google::Apis::Core::Hashable
      
        # The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate,
        # it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep
        # SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \ 42:
        # E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE
        # -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:
        # B9:95:2F:34:FC:64: \ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this
        # example, the contents of this field would be `14:6D:E9:83:C5:73: 06:50:D8:EE:
        # B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5`. If these
        # tools are not available to you, you can convert the PEM certificate into the
        # DER format, compute the SHA-256 hash of that string and represent the result
        # as a hexstring (that is, uppercase hexadecimal representations of each octet,
        # separated by colons).
        # Corresponds to the JSON property `sha256Fingerprint`
        # @return [String]
        attr_accessor :sha256_fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha256_fingerprint = args[:sha256_fingerprint] if args.key?(:sha256_fingerprint)
        end
      end
      
      # Response message for the CheckAssetLinks call.
      class CheckResponse
        include Google::Apis::Core::Hashable
      
        # Human-readable message containing information intended to help end users
        # understand, reproduce and debug the result. The message will be in English and
        # we are currently not planning to offer any translations. Please note that no
        # guarantees are made about the contents or format of this string. Any aspect of
        # it may be subject to change without notice. You should not attempt to
        # programmatically parse this data. For programmatic access, use the error_code
        # field below.
        # Corresponds to the JSON property `debugString`
        # @return [String]
        attr_accessor :debug_string
      
        # Error codes that describe the result of the Check operation.
        # Corresponds to the JSON property `errorCode`
        # @return [Array<String>]
        attr_accessor :error_code
      
        # Set to true if the assets specified in the request are linked by the relation
        # specified in the request.
        # Corresponds to the JSON property `linked`
        # @return [Boolean]
        attr_accessor :linked
        alias_method :linked?, :linked
      
        # From serving time, how much longer the response should be considered valid
        # barring further updates. REQUIRED
        # Corresponds to the JSON property `maxAge`
        # @return [String]
        attr_accessor :max_age
      
        # Statements may specify relation level extensions/payloads to express more
        # details when declaring permissions to grant from the source asset to the
        # target asset. When requested, the API will return relation_extensions
        # specified in any and all statements linking the requested source and target
        # assets by the relation specified in the request.
        # Corresponds to the JSON property `relationExtensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :relation_extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_string = args[:debug_string] if args.key?(:debug_string)
          @error_code = args[:error_code] if args.key?(:error_code)
          @linked = args[:linked] if args.key?(:linked)
          @max_age = args[:max_age] if args.key?(:max_age)
          @relation_extensions = args[:relation_extensions] if args.key?(:relation_extensions)
        end
      end
      
      # Response message for the List call.
      class ListResponse
        include Google::Apis::Core::Hashable
      
        # Human-readable message containing information intended to help end users
        # understand, reproduce and debug the result. The message will be in English and
        # we are currently not planning to offer any translations. Please note that no
        # guarantees are made about the contents or format of this string. Any aspect of
        # it may be subject to change without notice. You should not attempt to
        # programmatically parse this data. For programmatic access, use the error_code
        # field below.
        # Corresponds to the JSON property `debugString`
        # @return [String]
        attr_accessor :debug_string
      
        # Error codes that describe the result of the List operation.
        # Corresponds to the JSON property `errorCode`
        # @return [Array<String>]
        attr_accessor :error_code
      
        # From serving time, how much longer the response should be considered valid
        # barring further updates. REQUIRED
        # Corresponds to the JSON property `maxAge`
        # @return [String]
        attr_accessor :max_age
      
        # A list of all the matching statements that have been found.
        # Corresponds to the JSON property `statements`
        # @return [Array<Google::Apis::DigitalassetlinksV1::Statement>]
        attr_accessor :statements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_string = args[:debug_string] if args.key?(:debug_string)
          @error_code = args[:error_code] if args.key?(:error_code)
          @max_age = args[:max_age] if args.key?(:max_age)
          @statements = args[:statements] if args.key?(:statements)
        end
      end
      
      # Describes a reliable statement that has been made about the relationship
      # between a source asset and a target asset. Statements are always made by the
      # source asset, either directly or by delegating to a statement list that is
      # stored elsewhere. For more detailed definitions of statements and assets,
      # please refer to our [API documentation landing page](/digital-asset-links/v1/
      # getting-started).
      class Statement
        include Google::Apis::Core::Hashable
      
        # The relation identifies the use of the statement as intended by the source
        # asset's owner (that is, the person or entity who issued the statement). Every
        # complete statement has a relation. We identify relations with strings of the
        # format `/`, where `` must be one of a set of pre-defined purpose categories,
        # and `` is a free-form lowercase alphanumeric string that describes the
        # specific use case of the statement. Refer to [our API documentation](/digital-
        # asset-links/v1/relation-strings) for the current list of supported relations.
        # Example: `delegate_permission/common.handle_all_urls` REQUIRED
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Statements may specify relation level extensions/payloads to express more
        # details when declaring permissions to grant from the source asset to the
        # target asset. These relation extensions should be specified in the `
        # relation_extensions` object, keyed by the relation type they're associated
        # with. ` relation: ["delegate_permission/common.handle_all_urls"], target: `...`
        # , relation_extensions: ` "delegate_permission/common.handle_all_urls": ` ...
        # handle_all_urls specific payload specified here... ` ` ` When requested, and
        # specified in the statement file, the API will return relation_extensions
        # associated with the statement's relation type. i.e. the API will only return
        # relation_extensions specified for "delegate_permission/common.handle_all_urls"
        # if this statement object's relation type is "delegate_permission/common.
        # handle_all_urls".
        # Corresponds to the JSON property `relationExtensions`
        # @return [Hash<String,Object>]
        attr_accessor :relation_extensions
      
        # Uniquely identifies an asset. A digital asset is an identifiable and
        # addressable online entity that typically provides some service or content.
        # Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DigitalassetlinksV1::Asset]
        attr_accessor :source
      
        # Uniquely identifies an asset. A digital asset is an identifiable and
        # addressable online entity that typically provides some service or content.
        # Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DigitalassetlinksV1::Asset]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @relation = args[:relation] if args.key?(:relation)
          @relation_extensions = args[:relation_extensions] if args.key?(:relation_extensions)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # A single statement to check in a bulk call using BulkCheck. See CheckRequest
      # for details about each field.
      class StatementTemplate
        include Google::Apis::Core::Hashable
      
        # The relationship being asserted between the source and target. If omitted, you
        # must specify a BulkCheckRequest.default_relation value to use here.
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Uniquely identifies an asset. A digital asset is an identifiable and
        # addressable online entity that typically provides some service or content.
        # Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DigitalassetlinksV1::Asset]
        attr_accessor :source
      
        # Uniquely identifies an asset. A digital asset is an identifiable and
        # addressable online entity that typically provides some service or content.
        # Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DigitalassetlinksV1::Asset]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @relation = args[:relation] if args.key?(:relation)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Describes a web asset.
      class WebAsset
        include Google::Apis::Core::Hashable
      
        # Web assets are identified by a URL that contains only the scheme, hostname and
        # port parts. The format is http[s]://[:] Hostnames must be fully qualified:
        # they must end in a single period ("`.`"). Only the schemes "http" and "https"
        # are currently allowed. Port numbers are given as a decimal number, and they
        # must be omitted if the standard port numbers are used: 80 for http and 443 for
        # https. We call this limited URL the "site". All URLs that share the same
        # scheme, hostname and port are considered to be a part of the site and thus
        # belong to the web asset. Example: the asset with the site `https://www.google.
        # com` contains all these URLs: * `https://www.google.com/` * `https://www.
        # google.com:443/` * `https://www.google.com/foo` * `https://www.google.com/foo?
        # bar` * `https://www.google.com/foo#bar` * `https://user@password:www.google.
        # com/` But it does not contain these URLs: * `http://www.google.com/` (wrong
        # scheme) * `https://google.com/` (hostname does not match) * `https://www.
        # google.com:444/` (port does not match) REQUIRED
        # Corresponds to the JSON property `site`
        # @return [String]
        attr_accessor :site
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site = args[:site] if args.key?(:site)
        end
      end
    end
  end
end
