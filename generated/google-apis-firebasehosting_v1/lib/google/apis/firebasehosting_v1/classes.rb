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
    module FirebasehostingV1
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A set of ACME challenges you can use to allow Hosting to create an SSL
      # certificate for your domain name before directing traffic to Hosting servers.
      # Use either the DNS or HTTP challenge; it's not necessary to provide both.
      class CertVerification
        include Google::Apis::Core::Hashable
      
        # A set of DNS record updates that you should make to allow Hosting to serve
        # secure content in response to requests against your domain name. These updates
        # present the current state of your domain name's DNS records when Hosting last
        # queried them, and the desired set of records that Hosting needs to see before
        # your custom domain can be fully active.
        # Corresponds to the JSON property `dns`
        # @return [Google::Apis::FirebasehostingV1::DnsUpdates]
        attr_accessor :dns
      
        # A file you can add to your existing, non-Hosting hosting service that confirms
        # your intent to allow Hosting's Certificate Authorities to create an SSL
        # certificate for your domain.
        # Corresponds to the JSON property `http`
        # @return [Google::Apis::FirebasehostingV1::HttpUpdate]
        attr_accessor :http
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns = args[:dns] if args.key?(:dns)
          @http = args[:http] if args.key?(:http)
        end
      end
      
      # Metadata associated with a`CustomDomain` operation.
      class CustomDomainMetadata
        include Google::Apis::Core::Hashable
      
        # The `CertState` of the domain name's SSL certificate.
        # Corresponds to the JSON property `certState`
        # @return [String]
        attr_accessor :cert_state
      
        # The `HostState` of the domain name this `CustomDomain` refers to.
        # Corresponds to the JSON property `hostState`
        # @return [String]
        attr_accessor :host_state
      
        # A list of issues that are currently preventing Hosting from completing the
        # operation. These are generally DNS-related issues that Hosting encounters when
        # querying a domain name's records or attempting to mint an SSL certificate.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::FirebasehostingV1::Status>]
        attr_accessor :issues
      
        # A set of DNS record updates and ACME challenges that allow you to transition
        # domain names to Firebase Hosting with zero downtime. These updates allow
        # Hosting to create an SSL certificate and establish ownership for your custom
        # domain before Hosting begins serving traffic on it. If your domain name is
        # already in active use with another provider, add one of the challenges and
        # make the recommended DNS updates. After adding challenges and adjusting DNS
        # records as necessary, wait for the `ownershipState` to be `OWNERSHIP_ACTIVE`
        # and the `certState` to be `CERT_ACTIVE` before sending traffic to Hosting.
        # Corresponds to the JSON property `liveMigrationSteps`
        # @return [Array<Google::Apis::FirebasehostingV1::LiveMigrationStep>]
        attr_accessor :live_migration_steps
      
        # The `OwnershipState` of the domain name this `CustomDomain` refers to.
        # Corresponds to the JSON property `ownershipState`
        # @return [String]
        attr_accessor :ownership_state
      
        # A set of DNS record updates that you should make to allow Hosting to serve
        # secure content in response to requests against your domain name. These updates
        # present the current state of your domain name's DNS records when Hosting last
        # queried them, and the desired set of records that Hosting needs to see before
        # your custom domain can be fully active.
        # Corresponds to the JSON property `quickSetupUpdates`
        # @return [Google::Apis::FirebasehostingV1::DnsUpdates]
        attr_accessor :quick_setup_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_state = args[:cert_state] if args.key?(:cert_state)
          @host_state = args[:host_state] if args.key?(:host_state)
          @issues = args[:issues] if args.key?(:issues)
          @live_migration_steps = args[:live_migration_steps] if args.key?(:live_migration_steps)
          @ownership_state = args[:ownership_state] if args.key?(:ownership_state)
          @quick_setup_updates = args[:quick_setup_updates] if args.key?(:quick_setup_updates)
        end
      end
      
      # DNS records are resource records that define how systems and services should
      # behave when handling requests for a domain name. For example, when you add `A`
      # records to your domain name's DNS records, you're informing other systems (
      # such as your users' web browsers) to contact those IPv4 addresses to retrieve
      # resources relevant to your domain name (such as your Hosting site files).
      class DnsRecord
        include Google::Apis::Core::Hashable
      
        # Output only. The domain name the record pertains to, e.g. `foo.bar.com.`.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Output only. The data of the record. The meaning of the value depends on
        # record type: - A and AAAA: IP addresses for the domain name. - CNAME: Another
        # domain to check for records. - TXT: Arbitrary text strings associated with the
        # domain name. Hosting uses TXT records to determine which Firebase projects
        # have permission to act on the domain name's behalf. - CAA: The record's flags,
        # tag, and value, e.g. `0 issue "pki.goog"`.
        # Corresponds to the JSON property `rdata`
        # @return [String]
        attr_accessor :rdata
      
        # Output only. An enum that indicates the a required action for this record.
        # Corresponds to the JSON property `requiredAction`
        # @return [String]
        attr_accessor :required_action
      
        # Output only. The record's type, which determines what data the record contains.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @rdata = args[:rdata] if args.key?(:rdata)
          @required_action = args[:required_action] if args.key?(:required_action)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A set of DNS records relevant to the setup and maintenance of a custom domain
      # in Firebase Hosting.
      class DnsRecordSet
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `checkError`
        # @return [Google::Apis::FirebasehostingV1::Status]
        attr_accessor :check_error
      
        # Output only. The domain name the record set pertains to.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Output only. Records on the domain.
        # Corresponds to the JSON property `records`
        # @return [Array<Google::Apis::FirebasehostingV1::DnsRecord>]
        attr_accessor :records
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_error = args[:check_error] if args.key?(:check_error)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @records = args[:records] if args.key?(:records)
        end
      end
      
      # A set of DNS record updates that you should make to allow Hosting to serve
      # secure content in response to requests against your domain name. These updates
      # present the current state of your domain name's DNS records when Hosting last
      # queried them, and the desired set of records that Hosting needs to see before
      # your custom domain can be fully active.
      class DnsUpdates
        include Google::Apis::Core::Hashable
      
        # The last time Hosting checked your custom domain's DNS records.
        # Corresponds to the JSON property `checkTime`
        # @return [String]
        attr_accessor :check_time
      
        # The set of DNS records Hosting needs to serve secure content on the domain.
        # Corresponds to the JSON property `desired`
        # @return [Array<Google::Apis::FirebasehostingV1::DnsRecordSet>]
        attr_accessor :desired
      
        # The set of DNS records Hosting discovered when inspecting a domain.
        # Corresponds to the JSON property `discovered`
        # @return [Array<Google::Apis::FirebasehostingV1::DnsRecordSet>]
        attr_accessor :discovered
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_time = args[:check_time] if args.key?(:check_time)
          @desired = args[:desired] if args.key?(:desired)
          @discovered = args[:discovered] if args.key?(:discovered)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A file you can add to your existing, non-Hosting hosting service that confirms
      # your intent to allow Hosting's Certificate Authorities to create an SSL
      # certificate for your domain.
      class HttpUpdate
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `checkError`
        # @return [Google::Apis::FirebasehostingV1::Status]
        attr_accessor :check_error
      
        # Output only. A text string to serve at the path.
        # Corresponds to the JSON property `desired`
        # @return [String]
        attr_accessor :desired
      
        # Output only. Whether Hosting was able to find the required file contents on
        # the specified path during its last check.
        # Corresponds to the JSON property `discovered`
        # @return [String]
        attr_accessor :discovered
      
        # Output only. The last time Hosting systems checked for the file contents.
        # Corresponds to the JSON property `lastCheckTime`
        # @return [String]
        attr_accessor :last_check_time
      
        # Output only. The path to the file.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_error = args[:check_error] if args.key?(:check_error)
          @desired = args[:desired] if args.key?(:desired)
          @discovered = args[:discovered] if args.key?(:discovered)
          @last_check_time = args[:last_check_time] if args.key?(:last_check_time)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::FirebasehostingV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # A set of updates including ACME challenges and DNS records that allow Hosting
      # to create an SSL certificate and establish project ownership for your domain
      # name before you direct traffic to Hosting servers. Use these updates to
      # facilitate zero downtime migrations to Hosting from other services. After you'
      # ve made the recommended updates, check your custom domain's `ownershipState`
      # and `certState`. To avoid downtime, they should be `OWNERSHIP_ACTIVE` and `
      # CERT_ACTIVE`, respectively, before you update your `A` and `AAAA` records.
      class LiveMigrationStep
        include Google::Apis::Core::Hashable
      
        # A set of ACME challenges you can use to allow Hosting to create an SSL
        # certificate for your domain name before directing traffic to Hosting servers.
        # Use either the DNS or HTTP challenge; it's not necessary to provide both.
        # Corresponds to the JSON property `certVerification`
        # @return [Google::Apis::FirebasehostingV1::CertVerification]
        attr_accessor :cert_verification
      
        # A set of DNS record updates that you should make to allow Hosting to serve
        # secure content in response to requests against your domain name. These updates
        # present the current state of your domain name's DNS records when Hosting last
        # queried them, and the desired set of records that Hosting needs to see before
        # your custom domain can be fully active.
        # Corresponds to the JSON property `dnsUpdates`
        # @return [Google::Apis::FirebasehostingV1::DnsUpdates]
        attr_accessor :dns_updates
      
        # Output only. Issues that prevent the current step from completing.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::FirebasehostingV1::Status>]
        attr_accessor :issues
      
        # Output only. The state of the live migration step, indicates whether you
        # should work to complete the step now, in the future, or have already completed
        # it.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_verification = args[:cert_verification] if args.key?(:cert_verification)
          @dns_updates = args[:dns_updates] if args.key?(:dns_updates)
          @issues = args[:issues] if args.key?(:issues)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::FirebasehostingV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end
