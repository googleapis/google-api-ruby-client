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
    module MybusinessaccountmanagementV1
      
      # Request message for AccessControl.AcceptInvitation.
      class AcceptInvitationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An account is a container for your location. If you are the only user who
      # manages locations for your business, you can use your personal Google Account.
      # To share management of locations with multiple users, [create a business
      # account] (https://support.google.com/business/answer/6085339?ref_topic=6085325)
      # .
      class Account
        include Google::Apis::Core::Hashable
      
        # Required. The name of the account. For an account of type `PERSONAL`, this is
        # the first and last name of the user account.
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # Output only. Account reference number if provisioned.
        # Corresponds to the JSON property `accountNumber`
        # @return [String]
        attr_accessor :account_number
      
        # Immutable. The resource name, in the format `accounts/`account_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional information stored for an organization.
        # Corresponds to the JSON property `organizationInfo`
        # @return [Google::Apis::MybusinessaccountmanagementV1::OrganizationInfo]
        attr_accessor :organization_info
      
        # Output only. Specifies the permission level the user has for this account.
        # Corresponds to the JSON property `permissionLevel`
        # @return [String]
        attr_accessor :permission_level
      
        # Required. Input only. The resource name of the account which will be the
        # primary owner of the account being created. It should be of the form `accounts/
        # `account_id``.
        # Corresponds to the JSON property `primaryOwner`
        # @return [String]
        attr_accessor :primary_owner
      
        # Output only. Specifies the AccountRole of this account.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Required. Contains the type of account. Accounts of type PERSONAL and
        # ORGANIZATION cannot be created using this API.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. If verified, future locations that are created are automatically
        # connected to Google Maps, and have Google+ pages created, without requiring
        # moderation.
        # Corresponds to the JSON property `verificationState`
        # @return [String]
        attr_accessor :verification_state
      
        # Output only. Indicates whether the account is vetted by Google. A vetted
        # account is able to verify locations via the VETTED_PARTNER method.
        # Corresponds to the JSON property `vettedState`
        # @return [String]
        attr_accessor :vetted_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_name = args[:account_name] if args.key?(:account_name)
          @account_number = args[:account_number] if args.key?(:account_number)
          @name = args[:name] if args.key?(:name)
          @organization_info = args[:organization_info] if args.key?(:organization_info)
          @permission_level = args[:permission_level] if args.key?(:permission_level)
          @primary_owner = args[:primary_owner] if args.key?(:primary_owner)
          @role = args[:role] if args.key?(:role)
          @type = args[:type] if args.key?(:type)
          @verification_state = args[:verification_state] if args.key?(:verification_state)
          @vetted_state = args[:vetted_state] if args.key?(:vetted_state)
        end
      end
      
      # An administrator of an Account or a location.
      class Admin
        include Google::Apis::Core::Hashable
      
        # Immutable. The name of the Account resource that this Admin refers to. Used
        # when calling locations.admins.create to invite a LocationGroup as an admin. If
        # both this field and `admin` are set on `CREATE` requests, this field takes
        # precedence and the email address in `admin` will be ignored. Format: `accounts/
        # `account``.
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # Optional. The name of the admin. When making the initial invitation, this is
        # the invitee's email address. On `GET` calls, the user's email address is
        # returned if the invitation is still pending. Otherwise, it contains the user's
        # first and last names. This field is only needed to be set during admin
        # creation.
        # Corresponds to the JSON property `admin`
        # @return [String]
        attr_accessor :admin
      
        # Immutable. The resource name. For account admins, this is in the form: `
        # accounts/`account_id`/admins/`admin_id`` For location admins, this is in the
        # form: `locations/`location_id`/admins/`admin_id`` This field will be ignored
        # if set during admin creation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Indicates whether this admin has a pending invitation for the
        # specified resource.
        # Corresponds to the JSON property `pendingInvitation`
        # @return [Boolean]
        attr_accessor :pending_invitation
        alias_method :pending_invitation?, :pending_invitation
      
        # Required. Specifies the role that this admin uses with the specified Account
        # or Location.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @admin = args[:admin] if args.key?(:admin)
          @name = args[:name] if args.key?(:name)
          @pending_invitation = args[:pending_invitation] if args.key?(:pending_invitation)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request message for AccessControl.DeclineInvitation.
      class DeclineInvitationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Represents a pending invitation.
      class Invitation
        include Google::Apis::Core::Hashable
      
        # Required. The resource name for the invitation. `accounts/`account_id`/
        # invitations/`invitation_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The invited role on the account.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # An account is a container for your location. If you are the only user who
        # manages locations for your business, you can use your personal Google Account.
        # To share management of locations with multiple users, [create a business
        # account] (https://support.google.com/business/answer/6085339?ref_topic=6085325)
        # .
        # Corresponds to the JSON property `targetAccount`
        # @return [Google::Apis::MybusinessaccountmanagementV1::Account]
        attr_accessor :target_account
      
        # Represents a target location for a pending invitation.
        # Corresponds to the JSON property `targetLocation`
        # @return [Google::Apis::MybusinessaccountmanagementV1::TargetLocation]
        attr_accessor :target_location
      
        # Output only. Specifies which target types should appear in the response.
        # Corresponds to the JSON property `targetType`
        # @return [String]
        attr_accessor :target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
          @target_account = args[:target_account] if args.key?(:target_account)
          @target_location = args[:target_location] if args.key?(:target_location)
          @target_type = args[:target_type] if args.key?(:target_type)
        end
      end
      
      # Response message for AccessControl.ListAccountAdmins.
      class ListAccountAdminsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of Admin instances.
        # Corresponds to the JSON property `accountAdmins`
        # @return [Array<Google::Apis::MybusinessaccountmanagementV1::Admin>]
        attr_accessor :account_admins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_admins = args[:account_admins] if args.key?(:account_admins)
        end
      end
      
      # Response message for Accounts.ListAccounts.
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of accounts to which the user has access. The personal account of
        # the user doing the query will always be the first item of the result, unless
        # it is filtered out.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::MybusinessaccountmanagementV1::Account>]
        attr_accessor :accounts
      
        # If the number of accounts exceeds the requested page size, this field is
        # populated with a token to fetch the next page of accounts on a subsequent call
        # to `accounts.list`. If there are no more accounts, this field is not present
        # in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AccessControl.ListInvitations.
      class ListInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of invitations that are pending for the account. The number of
        # invitations listed here cannot exceed 1000.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::MybusinessaccountmanagementV1::Invitation>]
        attr_accessor :invitations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invitations = args[:invitations] if args.key?(:invitations)
        end
      end
      
      # Response message for AccessControl.ListLocationAdmins.
      class ListLocationAdminsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of Admins.
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::MybusinessaccountmanagementV1::Admin>]
        attr_accessor :admins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admins = args[:admins] if args.key?(:admins)
        end
      end
      
      # Additional information stored for an organization.
      class OrganizationInfo
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an internationalization-ready address widget
        # such as https://github.com/google/libaddressinput) - Users should not be
        # presented with UI elements for input or editing of fields outside countries
        # where that field is used. For more guidance on how to use this schema, please
        # see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MybusinessaccountmanagementV1::PostalAddress]
        attr_accessor :address
      
        # Output only. The contact number for the organization.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Output only. The registered domain for the account.
        # Corresponds to the JSON property `registeredDomain`
        # @return [String]
        attr_accessor :registered_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @registered_domain = args[:registered_domain] if args.key?(:registered_domain)
        end
      end
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar. It is not intended to model geographical locations (roads,
      # towns, mountains). In typical usage an address would be created via user input
      # or from importing existing data, depending on the type of process. Advice on
      # address input / editing: - Use an internationalization-ready address widget
      # such as https://github.com/google/libaddressinput) - Users should not be
      # presented with UI elements for input or editing of fields outside countries
      # where that field is used. For more guidance on how to use this schema, please
      # see: https://support.google.com/business/answer/6397478
      class PostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in address_lines do not have type information and may sometimes contain
        # multiple values in a single field (e.g. "Austin, TX"), it is important that
        # the line order is clear. The order of address lines should be "envelope order"
        # for the country/region of the address. In places where this can vary (e.g.
        # Japan), address_language is used to make it explicit (e.g. "ja" for large-to-
        # small ordering and "ja-Latn" or "en" for small-to-large). This way, the most
        # specific line of an address can be selected based on the language. The minimum
        # permitted structural representation of an address consists of a region_code
        # with all remaining information placed in the address_lines. It would be
        # possible to format such an address very approximately without geocoding, but
        # no semantic reasoning could be made about any of the address components until
        # it was at least partially resolved. Creating an address only containing a
        # region_code and address_lines, and then geocoding is the recommended way to
        # handle completely unstructured addresses (as opposed to guessing which parts
        # of the address should be localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. Specifically, for Spain this is the province and
        # not the autonomous community (e.g. "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. E.g. in
        # Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (e.g. state/zip validation in the U.
        # S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See https://
        # cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (e.g. "CEDEX 7"), or just a number alone,
        # representing the "sector code" (Jamaica), "delivery area indicator" (Malawi)
        # or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be neighborhoods,
        # boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Represents a target location for a pending invitation.
      class TargetLocation
        include Google::Apis::Core::Hashable
      
        # The address of the location to which the user is invited.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # The name of the location to which the user is invited.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @location_name = args[:location_name] if args.key?(:location_name)
        end
      end
      
      # Request message for AccessControl.TransferLocation.
      class TransferLocationRequest
        include Google::Apis::Core::Hashable
      
        # Required. Name of the account resource to transfer the location to (for
        # example, "accounts/`account`").
        # Corresponds to the JSON property `destinationAccount`
        # @return [String]
        attr_accessor :destination_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_account = args[:destination_account] if args.key?(:destination_account)
        end
      end
    end
  end
end
