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
    module Oauth2V2
      
      # 
      class Jwk
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::Oauth2V2::Jwk::Key>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] unless args[:keys].nil?
        end
        
        # 
        class Key
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `alg`
          # @return [String]
          attr_accessor :alg
        
          # 
          # Corresponds to the JSON property `e`
          # @return [String]
          attr_accessor :e
        
          # 
          # Corresponds to the JSON property `kid`
          # @return [String]
          attr_accessor :kid
        
          # 
          # Corresponds to the JSON property `kty`
          # @return [String]
          attr_accessor :kty
        
          # 
          # Corresponds to the JSON property `n`
          # @return [String]
          attr_accessor :n
        
          # 
          # Corresponds to the JSON property `use`
          # @return [String]
          attr_accessor :use
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @alg = args[:alg] unless args[:alg].nil?
            @e = args[:e] unless args[:e].nil?
            @kid = args[:kid] unless args[:kid].nil?
            @kty = args[:kty] unless args[:kty].nil?
            @n = args[:n] unless args[:n].nil?
            @use = args[:use] unless args[:use].nil?
          end
        end
      end
      
      # 
      class Tokeninfo
        include Google::Apis::Core::Hashable
      
        # The access type granted with this token. It can be offline or online.
        # Corresponds to the JSON property `access_type`
        # @return [String]
        attr_accessor :access_type
      
        # Who is the intended audience for this token. In general the same as issued_to.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # The email address of the user. Present only if the email scope is present in
        # the request.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The expiry time of the token, as number of seconds left until expiry.
        # Corresponds to the JSON property `expires_in`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # To whom was the token issued to. In general the same as audience.
        # Corresponds to the JSON property `issued_to`
        # @return [String]
        attr_accessor :issued_to
      
        # The space separated list of scopes granted to this token.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # The token handle associated with this token.
        # Corresponds to the JSON property `token_handle`
        # @return [String]
        attr_accessor :token_handle
      
        # The obfuscated user id.
        # Corresponds to the JSON property `user_id`
        # @return [String]
        attr_accessor :user_id
      
        # Boolean flag which is true if the email address is verified. Present only if
        # the email scope is present in the request.
        # Corresponds to the JSON property `verified_email`
        # @return [Boolean]
        attr_accessor :verified_email
        alias_method :verified_email?, :verified_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] unless args[:access_type].nil?
          @audience = args[:audience] unless args[:audience].nil?
          @email = args[:email] unless args[:email].nil?
          @expires_in = args[:expires_in] unless args[:expires_in].nil?
          @issued_to = args[:issued_to] unless args[:issued_to].nil?
          @scope = args[:scope] unless args[:scope].nil?
          @token_handle = args[:token_handle] unless args[:token_handle].nil?
          @user_id = args[:user_id] unless args[:user_id].nil?
          @verified_email = args[:verified_email] unless args[:verified_email].nil?
        end
      end
      
      # 
      class Userinfoplus
        include Google::Apis::Core::Hashable
      
        # The user's email address.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The user's last name.
        # Corresponds to the JSON property `family_name`
        # @return [String]
        attr_accessor :family_name
      
        # The user's gender.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # The user's first name.
        # Corresponds to the JSON property `given_name`
        # @return [String]
        attr_accessor :given_name
      
        # The hosted domain e.g. example.com if the user is Google apps user.
        # Corresponds to the JSON property `hd`
        # @return [String]
        attr_accessor :hd
      
        # The obfuscated ID of the user.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # URL of the profile page.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # The user's preferred locale.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The user's full name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the user's picture image.
        # Corresponds to the JSON property `picture`
        # @return [String]
        attr_accessor :picture
      
        # Boolean flag which is true if the email address is verified. Always verified
        # because we only return the user's primary email address.
        # Corresponds to the JSON property `verified_email`
        # @return [Boolean]
        attr_accessor :verified_email
        alias_method :verified_email?, :verified_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] unless args[:email].nil?
          @family_name = args[:family_name] unless args[:family_name].nil?
          @gender = args[:gender] unless args[:gender].nil?
          @given_name = args[:given_name] unless args[:given_name].nil?
          @hd = args[:hd] unless args[:hd].nil?
          @id = args[:id] unless args[:id].nil?
          @link = args[:link] unless args[:link].nil?
          @locale = args[:locale] unless args[:locale].nil?
          @name = args[:name] unless args[:name].nil?
          @picture = args[:picture] unless args[:picture].nil?
          @verified_email = args[:verified_email] unless args[:verified_email].nil?
        end
      end
    end
  end
end
