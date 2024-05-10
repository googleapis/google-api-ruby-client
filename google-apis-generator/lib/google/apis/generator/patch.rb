require 'google/apis/discovery_v1'

# Extend the DiscoveryV1 API classes with additional fields for code generation,
# supporting features which are not present in the schema itself.
unless Google::Apis::DiscoveryV1::RestMethod.respond_to? :api_version
  module Google
    module Apis
      module DiscoveryV1
        class RestMethod
          # The `apiVersion` for this method, or empty if not present.
          # @return [String]
          attr_accessor :api_version

          # @private
          # The original DiscoveryV1::RestMethod `update!` method to be called
          # after applying patches to this schema.
          alias_method :update_discovery!, :update!

          # Update properties of this object.
          def update!(**args)
            @api_version = args.key?(:api_version) ? args[:api_version] : ""
            update_discovery!(**args)
          end

          # @private
          class Representation
            # @private
            # The api_version based on the JSON key value.
            property :api_version, as: 'apiVersion'
          end
        end
      end
    end
  end
end
