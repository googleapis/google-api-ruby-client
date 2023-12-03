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
    module WalletobjectsV1
      # Google Wallet API
      #
      # API for issuers to save and manage Google Wallet Objects.
      #
      # @example
      #    require 'google/apis/walletobjects_v1'
      #
      #    Walletobjects = Google::Apis::WalletobjectsV1 # Alias the module
      #    service = Walletobjects::WalletobjectsService.new
      #
      # @see https://developers.google.com/pay/passes
      class WalletobjectsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://walletobjects.googleapis.com/', '',
                client_name: 'google-apis-walletobjects_v1',
                client_version: Google::Apis::WalletobjectsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Adds a message to the event ticket class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketClassAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketClassAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_eventticketclass(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/eventTicketClass/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketClassAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketClassAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the event ticket class with the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_eventticketclass(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/eventTicketClass/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an event ticket class with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::EventTicketClass] event_ticket_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_eventticketclass(event_ticket_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/eventTicketClass', options)
          command.request_representation = Google::Apis::WalletobjectsV1::EventTicketClass::Representation
          command.request_object = event_ticket_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketClass
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all event ticket classes for a given issuer ID.
        # @param [Fixnum] issuer_id
        #   The ID of the issuer authorized to list classes.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` classes are available in a list. For example, if you have a
        #   list of 200 classes and you call list with `maxResults` set to 20, list will
        #   return the first 20 classes and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 classes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketClassListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketClassListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_eventticketclasses(issuer_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/eventTicketClass', options)
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketClassListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketClassListResponse
          command.query['issuerId'] = issuer_id unless issuer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the event ticket class referenced by the given class ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::EventTicketClass] event_ticket_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_eventticketclass(resource_id, event_ticket_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/eventTicketClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::EventTicketClass::Representation
          command.request_object = event_ticket_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the event ticket class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::EventTicketClass] event_ticket_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_eventticketclass(resource_id, event_ticket_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/eventTicketClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::EventTicketClass::Representation
          command.request_object = event_ticket_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the event ticket object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketObjectAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketObjectAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_eventticketobject(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/eventTicketObject/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketObjectAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketObjectAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the event ticket object with the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_eventticketobject(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/eventTicketObject/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an event ticket object with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::EventTicketObject] event_ticket_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_eventticketobject(event_ticket_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/eventTicketObject', options)
          command.request_representation = Google::Apis::WalletobjectsV1::EventTicketObject::Representation
          command.request_object = event_ticket_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketObject
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all event ticket objects for a given issuer ID.
        # @param [String] class_id
        #   The ID of the class whose objects will be listed.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` objects are available in a list. For example, if you have a
        #   list of 200 objects and you call list with `maxResults` set to 20, list will
        #   return the first 20 objects and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketObjectListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketObjectListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_eventticketobjects(class_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/eventTicketObject', options)
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketObjectListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketObjectListResponse
          command.query['classId'] = class_id unless class_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies linked offer objects for the event ticket object with the given ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::ModifyLinkedOfferObjectsRequest] modify_linked_offer_objects_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modifylinkedofferobjects_eventticketobject(resource_id, modify_linked_offer_objects_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/eventTicketObject/{resourceId}/modifyLinkedOfferObjects', options)
          command.request_representation = Google::Apis::WalletobjectsV1::ModifyLinkedOfferObjectsRequest::Representation
          command.request_object = modify_linked_offer_objects_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the event ticket object referenced by the given object ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::EventTicketObject] event_ticket_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_eventticketobject(resource_id, event_ticket_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/eventTicketObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::EventTicketObject::Representation
          command.request_object = event_ticket_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the event ticket object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::EventTicketObject] event_ticket_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::EventTicketObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::EventTicketObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_eventticketobject(resource_id, event_ticket_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/eventTicketObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::EventTicketObject::Representation
          command.request_object = event_ticket_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::EventTicketObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::EventTicketObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the flight class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightClassAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightClassAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_flightclass(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/flightClass/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::FlightClassAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightClassAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the flight class with the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_flightclass(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/flightClass/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::FlightClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an flight class with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::FlightClass] flight_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_flightclass(flight_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/flightClass', options)
          command.request_representation = Google::Apis::WalletobjectsV1::FlightClass::Representation
          command.request_object = flight_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::FlightClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightClass
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all flight classes for a given issuer ID.
        # @param [Fixnum] issuer_id
        #   The ID of the issuer authorized to list classes.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` classes are available in a list. For example, if you have a
        #   list of 200 classes and you call list with `maxResults` set to 20, list will
        #   return the first 20 classes and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 classes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightClassListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightClassListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_flightclasses(issuer_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/flightClass', options)
          command.response_representation = Google::Apis::WalletobjectsV1::FlightClassListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightClassListResponse
          command.query['issuerId'] = issuer_id unless issuer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the flight class referenced by the given class ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::FlightClass] flight_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_flightclass(resource_id, flight_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/flightClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::FlightClass::Representation
          command.request_object = flight_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::FlightClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the flight class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::FlightClass] flight_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_flightclass(resource_id, flight_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/flightClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::FlightClass::Representation
          command.request_object = flight_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::FlightClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the flight object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightObjectAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightObjectAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_flightobject(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/flightObject/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::FlightObjectAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightObjectAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the flight object with the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_flightobject(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/flightObject/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::FlightObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an flight object with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::FlightObject] flight_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_flightobject(flight_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/flightObject', options)
          command.request_representation = Google::Apis::WalletobjectsV1::FlightObject::Representation
          command.request_object = flight_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::FlightObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightObject
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all flight objects for a given issuer ID.
        # @param [String] class_id
        #   The ID of the class whose objects will be listed.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` objects are available in a list. For example, if you have a
        #   list of 200 objects and you call list with `maxResults` set to 20, list will
        #   return the first 20 objects and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightObjectListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightObjectListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_flightobjects(class_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/flightObject', options)
          command.response_representation = Google::Apis::WalletobjectsV1::FlightObjectListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightObjectListResponse
          command.query['classId'] = class_id unless class_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the flight object referenced by the given object ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::FlightObject] flight_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_flightobject(resource_id, flight_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/flightObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::FlightObject::Representation
          command.request_object = flight_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::FlightObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the flight object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::FlightObject] flight_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::FlightObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::FlightObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_flightobject(resource_id, flight_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/flightObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::FlightObject::Representation
          command.request_object = flight_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::FlightObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::FlightObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the generic class with the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value needs to follow the format `issuerID.identifier`
        #   where `issuerID` is issued by Google and `identifier` is chosen by you. The
        #   unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_genericclass(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/genericClass/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::GenericClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a generic class with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::GenericClass] generic_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_genericclass(generic_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/genericClass', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GenericClass::Representation
          command.request_object = generic_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::GenericClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericClass
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all generic classes for a given issuer ID.
        # @param [Fixnum] issuer_id
        #   The ID of the issuer authorized to list classes.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` classes are available in a list. For example, if you have a
        #   list of 200 classes and you call list with `maxResults` set to 20, list will
        #   return the first 20 classes and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 classes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericClassListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericClassListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_genericclasses(issuer_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/genericClass', options)
          command.response_representation = Google::Apis::WalletobjectsV1::GenericClassListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericClassListResponse
          command.query['issuerId'] = issuer_id unless issuer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the generic class referenced by the given class ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value needs to follow the format `issuerID.identifier`
        #   where `issuerID` is issued by Google and `identifier` is chosen by you. The
        #   unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
        # @param [Google::Apis::WalletobjectsV1::GenericClass] generic_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_genericclass(resource_id, generic_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/genericClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GenericClass::Representation
          command.request_object = generic_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::GenericClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Generic class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value needs to follow the format `issuerID.identifier`
        #   where `issuerID` is issued by Google and `identifier` is chosen by you. The
        #   unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
        # @param [Google::Apis::WalletobjectsV1::GenericClass] generic_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_genericclass(resource_id, generic_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/genericClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GenericClass::Representation
          command.request_object = generic_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::GenericClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the generic object with the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value needs to follow the format `issuerID.identifier`
        #   where `issuerID` is issued by Google and `identifier` is chosen by you. The
        #   unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_genericobject(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/genericObject/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::GenericObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a generic object with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::GenericObject] generic_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_genericobject(generic_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/genericObject', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GenericObject::Representation
          command.request_object = generic_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::GenericObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericObject
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all generic objects for a given issuer ID.
        # @param [String] class_id
        #   The ID of the class whose objects will be listed.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` objects are available in a list. For example, if you have a
        #   list of 200 objects and you call list with `maxResults` set to 20, list will
        #   return the first 20 objects and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericObjectListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericObjectListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_genericobjects(class_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/genericObject', options)
          command.response_representation = Google::Apis::WalletobjectsV1::GenericObjectListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericObjectListResponse
          command.query['classId'] = class_id unless class_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the generic object referenced by the given object ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value needs to follow the format `issuerID.identifier`
        #   where `issuerID` is issued by Google and `identifier` is chosen by you. The
        #   unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
        # @param [Google::Apis::WalletobjectsV1::GenericObject] generic_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_genericobject(resource_id, generic_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/genericObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GenericObject::Representation
          command.request_object = generic_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::GenericObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the generic object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value needs to follow the format `issuerID.identifier`
        #   where `issuerID` is issued by Google and `identifier` is chosen by you. The
        #   unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
        # @param [Google::Apis::WalletobjectsV1::GenericObject] generic_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GenericObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GenericObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_genericobject(resource_id, generic_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/genericObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GenericObject::Representation
          command.request_object = generic_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::GenericObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GenericObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the gift card class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardClassAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardClassAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_giftcardclass(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/giftCardClass/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardClassAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardClassAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the gift card class with the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_giftcardclass(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/giftCardClass/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an gift card class with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::GiftCardClass] gift_card_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_giftcardclass(gift_card_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/giftCardClass', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GiftCardClass::Representation
          command.request_object = gift_card_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardClass
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all gift card classes for a given issuer ID.
        # @param [Fixnum] issuer_id
        #   The ID of the issuer authorized to list classes.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` classes are available in a list. For example, if you have a
        #   list of 200 classes and you call list with `maxResults` set to 20, list will
        #   return the first 20 classes and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 classes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardClassListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardClassListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_giftcardclasses(issuer_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/giftCardClass', options)
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardClassListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardClassListResponse
          command.query['issuerId'] = issuer_id unless issuer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the gift card class referenced by the given class ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::GiftCardClass] gift_card_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_giftcardclass(resource_id, gift_card_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/giftCardClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GiftCardClass::Representation
          command.request_object = gift_card_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the gift card class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::GiftCardClass] gift_card_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_giftcardclass(resource_id, gift_card_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/giftCardClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GiftCardClass::Representation
          command.request_object = gift_card_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the gift card object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardObjectAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardObjectAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_giftcardobject(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/giftCardObject/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardObjectAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardObjectAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the gift card object with the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_giftcardobject(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/giftCardObject/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an gift card object with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::GiftCardObject] gift_card_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_giftcardobject(gift_card_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/giftCardObject', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GiftCardObject::Representation
          command.request_object = gift_card_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardObject
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all gift card objects for a given issuer ID.
        # @param [String] class_id
        #   The ID of the class whose objects will be listed.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` objects are available in a list. For example, if you have a
        #   list of 200 objects and you call list with `maxResults` set to 20, list will
        #   return the first 20 objects and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardObjectListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardObjectListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_giftcardobjects(class_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/giftCardObject', options)
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardObjectListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardObjectListResponse
          command.query['classId'] = class_id unless class_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the gift card object referenced by the given object ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::GiftCardObject] gift_card_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_giftcardobject(resource_id, gift_card_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/giftCardObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GiftCardObject::Representation
          command.request_object = gift_card_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the gift card object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::GiftCardObject] gift_card_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::GiftCardObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::GiftCardObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_giftcardobject(resource_id, gift_card_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/giftCardObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::GiftCardObject::Representation
          command.request_object = gift_card_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::GiftCardObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::GiftCardObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the issuer with the given issuer ID.
        # @param [Fixnum] resource_id
        #   The unique identifier for an issuer.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::Issuer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::Issuer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_issuer(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/issuer/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::Issuer::Representation
          command.response_class = Google::Apis::WalletobjectsV1::Issuer
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an issuer with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::Issuer] issuer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::Issuer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::Issuer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_issuer(issuer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/issuer', options)
          command.request_representation = Google::Apis::WalletobjectsV1::Issuer::Representation
          command.request_object = issuer_object
          command.response_representation = Google::Apis::WalletobjectsV1::Issuer::Representation
          command.response_class = Google::Apis::WalletobjectsV1::Issuer
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all issuers shared to the caller.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::IssuerListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::IssuerListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_issuers(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/issuer', options)
          command.response_representation = Google::Apis::WalletobjectsV1::IssuerListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::IssuerListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the issuer referenced by the given issuer ID. This method supports
        # patch semantics.
        # @param [Fixnum] resource_id
        #   The unique identifier for an issuer.
        # @param [Google::Apis::WalletobjectsV1::Issuer] issuer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::Issuer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::Issuer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_issuer(resource_id, issuer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/issuer/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::Issuer::Representation
          command.request_object = issuer_object
          command.response_representation = Google::Apis::WalletobjectsV1::Issuer::Representation
          command.response_class = Google::Apis::WalletobjectsV1::Issuer
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the issuer referenced by the given issuer ID.
        # @param [Fixnum] resource_id
        #   The unique identifier for an issuer.
        # @param [Google::Apis::WalletobjectsV1::Issuer] issuer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::Issuer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::Issuer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_issuer(resource_id, issuer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/issuer/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::Issuer::Representation
          command.request_object = issuer_object
          command.response_representation = Google::Apis::WalletobjectsV1::Issuer::Representation
          command.response_class = Google::Apis::WalletobjectsV1::Issuer
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts the resources in the JWT.
        # @param [Google::Apis::WalletobjectsV1::JwtResource] jwt_resource_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::JwtInsertResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::JwtInsertResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_jwt(jwt_resource_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/jwt', options)
          command.request_representation = Google::Apis::WalletobjectsV1::JwtResource::Representation
          command.request_object = jwt_resource_object
          command.response_representation = Google::Apis::WalletobjectsV1::JwtInsertResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::JwtInsertResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the loyalty class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyClassAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyClassAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_loyaltyclass(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/loyaltyClass/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyClassAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyClassAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the loyalty class with the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_loyaltyclass(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/loyaltyClass/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an loyalty class with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::LoyaltyClass] loyalty_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_loyaltyclass(loyalty_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/loyaltyClass', options)
          command.request_representation = Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
          command.request_object = loyalty_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyClass
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all loyalty classes for a given issuer ID.
        # @param [Fixnum] issuer_id
        #   The ID of the issuer authorized to list classes.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` classes are available in a list. For example, if you have a
        #   list of 200 classes and you call list with `maxResults` set to 20, list will
        #   return the first 20 classes and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 classes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyClassListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyClassListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_loyaltyclasses(issuer_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/loyaltyClass', options)
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyClassListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyClassListResponse
          command.query['issuerId'] = issuer_id unless issuer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the loyalty class referenced by the given class ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::LoyaltyClass] loyalty_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_loyaltyclass(resource_id, loyalty_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/loyaltyClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
          command.request_object = loyalty_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the loyalty class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::LoyaltyClass] loyalty_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_loyaltyclass(resource_id, loyalty_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/loyaltyClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
          command.request_object = loyalty_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the loyalty object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyObjectAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyObjectAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_loyaltyobject(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/loyaltyObject/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyObjectAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyObjectAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the loyalty object with the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_loyaltyobject(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/loyaltyObject/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an loyalty object with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::LoyaltyObject] loyalty_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_loyaltyobject(loyalty_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/loyaltyObject', options)
          command.request_representation = Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
          command.request_object = loyalty_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyObject
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all loyalty objects for a given issuer ID.
        # @param [String] class_id
        #   The ID of the class whose objects will be listed.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` objects are available in a list. For example, if you have a
        #   list of 200 objects and you call list with `maxResults` set to 20, list will
        #   return the first 20 objects and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyObjectListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyObjectListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_loyaltyobjects(class_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/loyaltyObject', options)
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyObjectListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyObjectListResponse
          command.query['classId'] = class_id unless class_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies linked offer objects for the loyalty object with the given ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::ModifyLinkedOfferObjectsRequest] modify_linked_offer_objects_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modifylinkedofferobjects_loyaltyobject(resource_id, modify_linked_offer_objects_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/loyaltyObject/{resourceId}/modifyLinkedOfferObjects', options)
          command.request_representation = Google::Apis::WalletobjectsV1::ModifyLinkedOfferObjectsRequest::Representation
          command.request_object = modify_linked_offer_objects_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the loyalty object referenced by the given object ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::LoyaltyObject] loyalty_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_loyaltyobject(resource_id, loyalty_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/loyaltyObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
          command.request_object = loyalty_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the loyalty object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::LoyaltyObject] loyalty_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::LoyaltyObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::LoyaltyObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_loyaltyobject(resource_id, loyalty_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/loyaltyObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
          command.request_object = loyalty_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::LoyaltyObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downloads rotating barcode values for the transit object referenced by the
        # given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::Media] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::Media]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(resource_id, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'walletobjects/v1/transitObject/{resourceId}/downloadRotatingBarcodeValues', options)
          else
            command = make_download_command(:get, 'walletobjects/v1/transitObject/{resourceId}/downloadRotatingBarcodeValues', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::WalletobjectsV1::Media::Representation
          command.response_class = Google::Apis::WalletobjectsV1::Media
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads rotating barcode values for the transit object referenced by the given
        # object ID. Note the max upload size is specified in google3/production/config/
        # cdd/apps-upload/customers/payments-consumer-passes/config.gcl and enforced by
        # Scotty.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::TransitObjectUploadRotatingBarcodeValuesRequest] transit_object_upload_rotating_barcode_values_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitObjectUploadRotatingBarcodeValuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitObjectUploadRotatingBarcodeValuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(resource_id, transit_object_upload_rotating_barcode_values_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'walletobjects/v1/transitObject/{resourceId}/uploadRotatingBarcodeValues', options)
          else
            command = make_upload_command(:post, 'walletobjects/v1/transitObject/{resourceId}/uploadRotatingBarcodeValues', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::WalletobjectsV1::TransitObjectUploadRotatingBarcodeValuesRequest::Representation
          command.request_object = transit_object_upload_rotating_barcode_values_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitObjectUploadRotatingBarcodeValuesResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitObjectUploadRotatingBarcodeValuesResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the offer class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferClassAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferClassAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_offerclass(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/offerClass/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::OfferClassAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferClassAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the offer class with the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_offerclass(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/offerClass/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::OfferClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an offer class with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::OfferClass] offer_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_offerclass(offer_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/offerClass', options)
          command.request_representation = Google::Apis::WalletobjectsV1::OfferClass::Representation
          command.request_object = offer_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::OfferClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferClass
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all offer classes for a given issuer ID.
        # @param [Fixnum] issuer_id
        #   The ID of the issuer authorized to list classes.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` classes are available in a list. For example, if you have a
        #   list of 200 classes and you call list with `maxResults` set to 20, list will
        #   return the first 20 classes and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 classes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferClassListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferClassListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_offerclasses(issuer_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/offerClass', options)
          command.response_representation = Google::Apis::WalletobjectsV1::OfferClassListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferClassListResponse
          command.query['issuerId'] = issuer_id unless issuer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the offer class referenced by the given class ID. This method supports
        # patch semantics.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::OfferClass] offer_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_offerclass(resource_id, offer_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/offerClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::OfferClass::Representation
          command.request_object = offer_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::OfferClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the offer class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::OfferClass] offer_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_offerclass(resource_id, offer_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/offerClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::OfferClass::Representation
          command.request_object = offer_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::OfferClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the offer object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferObjectAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferObjectAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_offerobject(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/offerObject/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::OfferObjectAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferObjectAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the offer object with the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_offerobject(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/offerObject/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::OfferObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an offer object with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::OfferObject] offer_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_offerobject(offer_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/offerObject', options)
          command.request_representation = Google::Apis::WalletobjectsV1::OfferObject::Representation
          command.request_object = offer_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::OfferObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferObject
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all offer objects for a given issuer ID.
        # @param [String] class_id
        #   The ID of the class whose objects will be listed.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` objects are available in a list. For example, if you have a
        #   list of 200 objects and you call list with `maxResults` set to 20, list will
        #   return the first 20 objects and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferObjectListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferObjectListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_offerobjects(class_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/offerObject', options)
          command.response_representation = Google::Apis::WalletobjectsV1::OfferObjectListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferObjectListResponse
          command.query['classId'] = class_id unless class_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the offer object referenced by the given object ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::OfferObject] offer_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_offerobject(resource_id, offer_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/offerObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::OfferObject::Representation
          command.request_object = offer_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::OfferObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the offer object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::OfferObject] offer_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::OfferObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::OfferObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_offerobject(resource_id, offer_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/offerObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::OfferObject::Representation
          command.request_object = offer_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::OfferObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::OfferObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the permissions for the given issuer id.
        # @param [Fixnum] resource_id
        #   The unique identifier for an issuer. This ID must be unique across all issuers.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::Permissions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::Permissions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_permission(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/permissions/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::Permissions::Representation
          command.response_class = Google::Apis::WalletobjectsV1::Permissions
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the permissions for the given issuer.
        # @param [Fixnum] resource_id
        #   The unique identifier for an issuer. This ID must be unique across all issuers.
        # @param [Google::Apis::WalletobjectsV1::Permissions] permissions_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::Permissions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::Permissions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_permission(resource_id, permissions_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/permissions/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::Permissions::Representation
          command.request_object = permissions_object
          command.response_representation = Google::Apis::WalletobjectsV1::Permissions::Representation
          command.response_class = Google::Apis::WalletobjectsV1::Permissions
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts the smart tap.
        # @param [Google::Apis::WalletobjectsV1::SmartTap] smart_tap_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::SmartTap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::SmartTap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_smarttap(smart_tap_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/smartTap', options)
          command.request_representation = Google::Apis::WalletobjectsV1::SmartTap::Representation
          command.request_object = smart_tap_object
          command.response_representation = Google::Apis::WalletobjectsV1::SmartTap::Representation
          command.response_class = Google::Apis::WalletobjectsV1::SmartTap
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the transit class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitClassAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitClassAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_transitclass(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/transitClass/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitClassAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitClassAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the transit class with the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_transitclass(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/transitClass/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::TransitClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a transit class with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::TransitClass] transit_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_transitclass(transit_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/transitClass', options)
          command.request_representation = Google::Apis::WalletobjectsV1::TransitClass::Representation
          command.request_object = transit_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitClass
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all transit classes for a given issuer ID.
        # @param [Fixnum] issuer_id
        #   The ID of the issuer authorized to list classes.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` classes are available in a list. For example, if you have a
        #   list of 200 classes and you call list with `maxResults` set to 20, list will
        #   return the first 20 classes and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 classes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitClassListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitClassListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_transitclasses(issuer_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/transitClass', options)
          command.response_representation = Google::Apis::WalletobjectsV1::TransitClassListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitClassListResponse
          command.query['issuerId'] = issuer_id unless issuer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the transit class referenced by the given class ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::TransitClass] transit_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_transitclass(resource_id, transit_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/transitClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::TransitClass::Representation
          command.request_object = transit_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the transit class referenced by the given class ID.
        # @param [String] resource_id
        #   The unique identifier for a class. This ID must be unique across all classes
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::TransitClass] transit_class_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_transitclass(resource_id, transit_class_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/transitClass/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::TransitClass::Representation
          command.request_object = transit_class_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitClass::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitClass
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a message to the transit object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::AddMessageRequest] add_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitObjectAddMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitObjectAddMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addmessage_transitobject(resource_id, add_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/transitObject/{resourceId}/addMessage', options)
          command.request_representation = Google::Apis::WalletobjectsV1::AddMessageRequest::Representation
          command.request_object = add_message_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitObjectAddMessageResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitObjectAddMessageResponse
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the transit object with the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_transitobject(resource_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/transitObject/{resourceId}', options)
          command.response_representation = Google::Apis::WalletobjectsV1::TransitObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts an transit object with the given ID and properties.
        # @param [Google::Apis::WalletobjectsV1::TransitObject] transit_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_transitobject(transit_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/transitObject', options)
          command.request_representation = Google::Apis::WalletobjectsV1::TransitObject::Representation
          command.request_object = transit_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitObject
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all transit objects for a given issuer ID.
        # @param [String] class_id
        #   The ID of the class whose objects will be listed.
        # @param [Fixnum] max_results
        #   Identifies the max number of results returned by a list. All results are
        #   returned if `maxResults` isn't defined.
        # @param [String] token
        #   Used to get the next set of results if `maxResults` is specified, but more
        #   than `maxResults` objects are available in a list. For example, if you have a
        #   list of 200 objects and you call list with `maxResults` set to 20, list will
        #   return the first 20 objects and a token. Call list again with `maxResults` set
        #   to 20 and the token to get the next 20 objects.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitObjectListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitObjectListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_transitobjects(class_id: nil, max_results: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'walletobjects/v1/transitObject', options)
          command.response_representation = Google::Apis::WalletobjectsV1::TransitObjectListResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitObjectListResponse
          command.query['classId'] = class_id unless class_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the transit object referenced by the given object ID. This method
        # supports patch semantics.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::TransitObject] transit_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_transitobject(resource_id, transit_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'walletobjects/v1/transitObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::TransitObject::Representation
          command.request_object = transit_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the transit object referenced by the given object ID.
        # @param [String] resource_id
        #   The unique identifier for an object. This ID must be unique across all objects
        #   from an issuer. This value should follow the format issuer ID. identifier
        #   where the former is issued by Google and latter is chosen by you. Your unique
        #   identifier should only include alphanumeric characters, '.', '_', or '-'.
        # @param [Google::Apis::WalletobjectsV1::TransitObject] transit_object_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::TransitObject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::TransitObject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_transitobject(resource_id, transit_object_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'walletobjects/v1/transitObject/{resourceId}', options)
          command.request_representation = Google::Apis::WalletobjectsV1::TransitObject::Representation
          command.request_object = transit_object_object
          command.response_representation = Google::Apis::WalletobjectsV1::TransitObject::Representation
          command.response_class = Google::Apis::WalletobjectsV1::TransitObject
          command.params['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provide Google with information about awaiting private pass update. This will
        # allow Google to provide the update notification to the device that currently
        # holds this pass.
        # @param [Google::Apis::WalletobjectsV1::SetPassUpdateNoticeRequest] set_pass_update_notice_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::SetPassUpdateNoticeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::SetPassUpdateNoticeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_private_content_pass_update_notice(set_pass_update_notice_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/privateContent/setPassUpdateNotice', options)
          command.request_representation = Google::Apis::WalletobjectsV1::SetPassUpdateNoticeRequest::Representation
          command.request_object = set_pass_update_notice_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::SetPassUpdateNoticeResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::SetPassUpdateNoticeResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upload private data (text or URI) and returns an Id to be used in its place.
        # @param [Google::Apis::WalletobjectsV1::UploadPrivateDataRequest] upload_private_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WalletobjectsV1::UploadPrivateDataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WalletobjectsV1::UploadPrivateDataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_private_content_private_data(upload_private_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'walletobjects/v1/privateContent/uploadPrivateData', options)
          command.request_representation = Google::Apis::WalletobjectsV1::UploadPrivateDataRequest::Representation
          command.request_object = upload_private_data_request_object
          command.response_representation = Google::Apis::WalletobjectsV1::UploadPrivateDataResponse::Representation
          command.response_class = Google::Apis::WalletobjectsV1::UploadPrivateDataResponse
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
