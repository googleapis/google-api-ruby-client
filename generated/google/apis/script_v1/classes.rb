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
    module ScriptV1
      
      # A stack trace through the script that shows where the execution failed.
      class ScriptStackTraceElement
        include Google::Apis::Core::Hashable
      
        # The name of the function that failed.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # The line number where the script failed.
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] if args.key?(:function)
          @line_number = args[:line_number] if args.key?(:line_number)
        end
      end
      
      # An object that provides information about the nature of an error in the Apps
      # Script Execution API. If an
      # `run` call succeeds but the
      # script function (or Apps Script itself) throws an exception, the response
      # body's `error` field contains a
      # `Status` object. The `Status` object's `details` field
      # contains an array with a single one of these `ExecutionError` objects.
      class ExecutionError
        include Google::Apis::Core::Hashable
      
        # The error type, for example `TypeError` or `ReferenceError`. If the error
        # type is unavailable, this field is not included.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        # The error message thrown by Apps Script, usually localized into the user's
        # language.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # An array of objects that provide a stack trace through the script to show
        # where the execution failed, with the deepest call first.
        # Corresponds to the JSON property `scriptStackTraceElements`
        # @return [Array<Google::Apis::ScriptV1::ScriptStackTraceElement>]
        attr_accessor :script_stack_trace_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_type = args[:error_type] if args.key?(:error_type)
          @error_message = args[:error_message] if args.key?(:error_message)
          @script_stack_trace_elements = args[:script_stack_trace_elements] if args.key?(:script_stack_trace_elements)
        end
      end
      
      # If a `run` call succeeds but the script function (or Apps Script itself)
      # throws an exception, the response body's `error` field will contain this `
      # Status` object.
      class Status
        include Google::Apis::Core::Hashable
      
        # A developer-facing error message, which is in English. Any user-facing error
        # message is localized and sent in the [`google.rpc.Status.details`](google.rpc.
        # Status.details) field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # An array that contains a single `ExecutionError` object that provides
        # information about the nature of the error.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # The status code. For this API, this value will always be 3, corresponding to
        # an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @details = args[:details] if args.key?(:details)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # A request to run the function in a script. The script is identified by the
      # specified `script_id`. Executing a function on a script returns results
      # based on the implementation of the script.
      class ExecutionRequest
        include Google::Apis::Core::Hashable
      
        # The name of the function to execute in the given script. The name does not
        # include parentheses or parameters.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # If `true` and the user is an owner of the script, the script runs at the
        # most recently saved version rather than the version deployed for use with
        # the Execution API. Optional; default is `false`.
        # Corresponds to the JSON property `devMode`
        # @return [Boolean]
        attr_accessor :dev_mode
        alias_method :dev_mode?, :dev_mode
      
        # The parameters to be passed to the function being executed. The object type
        # for each parameter should match the expected type in Apps Script.
        # Parameters cannot be Apps Script-specific object types (such as a
        # `Document` or a `Calendar`); they can only be primitive types such as
        # `string`, `number`, `array`, `object`, or `boolean`. Optional.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Object>]
        attr_accessor :parameters
      
        # For Android add-ons only. An ID that represents the user's current session
        # in the Android app for Google Docs or Sheets, included as extra data in the
        # [`Intent`](https://developer.android.com/guide/components/intents-filters.html)
        # that launches the add-on. When an Android add-on is run with a session
        # state, it gains the privileges of a
        # [bound](https://developers.google.com/apps-script/guides/bound) script &mdash;
        # that is, it can access information like the user's current cursor position
        # (in Docs) or selected cell (in Sheets). To retrieve the state, call
        # `Intent.getStringExtra("com.google.android.apps.docs.addons.SessionState")`.
        # Optional.
        # Corresponds to the JSON property `sessionState`
        # @return [String]
        attr_accessor :session_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] if args.key?(:function)
          @dev_mode = args[:dev_mode] if args.key?(:dev_mode)
          @parameters = args[:parameters] if args.key?(:parameters)
          @session_state = args[:session_state] if args.key?(:session_state)
        end
      end
      
      # A request to retrieve the results from a collection of requests,
      # specified by the operation resource names.
      class JoinAsyncRequest
        include Google::Apis::Core::Hashable
      
        # The script id which specifies the script which all processes in the names
        # field must be from.
        # Corresponds to the JSON property `scriptId`
        # @return [String]
        attr_accessor :script_id
      
        # List of operation resource names that we want to join,
        # as returned from a call to RunAsync.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        # Timeout for information retrieval in milliseconds.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @script_id = args[:script_id] if args.key?(:script_id)
          @names = args[:names] if args.key?(:names)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # An object that provides the return value of a function executed through the
      # Apps Script Execution API. If a
      # `run` call succeeds and the
      # script function returns successfully, the response body's
      # `response` field contains this
      # `ExecutionResponse` object.
      class ExecutionResponse
        include Google::Apis::Core::Hashable
      
        # The return value of the script function. The type matches the object type
        # returned in Apps Script. Functions called through the Execution API cannot
        # return Apps Script-specific objects (such as a `Document` or a `Calendar`);
        # they can only return primitive types such as a `string`, `number`, `array`,
        # `object`, or `boolean`.
        # Corresponds to the JSON property `result`
        # @return [Object]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # The response will not arrive until the function finishes executing. The
      # maximum runtime is listed in the guide to [limitations in Apps Script](https://
      # developers.google.com/apps-script/guides/services/quotas#current_limitations).
      # <p>If the script function returns successfully, the `response` field will
      # contain an `ExecutionResponse` object with the function's return value in the
      # object's `result` field.</p>
      # <p>If the script function (or Apps Script itself) throws an exception, the `
      # error` field will contain a `Status` object. The `Status` object's `details`
      # field will contain an array with a single `ExecutionError` object that
      # provides information about the nature of the error.</p>
      # <p>If the `run` call itself fails (for example, because of a malformed request
      # or an authorization error), the method will return an HTTP response code in
      # the 4XX range with a different format for the response body. Client libraries
      # will automatically convert a 4XX response into an exception class.</p>
      class Operation
        include Google::Apis::Core::Hashable
      
        # This field is not used.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # If the script function returns successfully, this field will contain an `
        # ExecutionResponse` object with the function's return value as the object's `
        # result` field.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        # This field is not used.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If a `run` call succeeds but the script function (or Apps Script itself)
        # throws an exception, the response body's `error` field will contain this `
        # Status` object.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ScriptV1::Status]
        attr_accessor :error
      
        # This field is not used.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @response = args[:response] if args.key?(:response)
          @name = args[:name] if args.key?(:name)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # An object that provides the return value for the JoinAsync method.
      class JoinAsyncResponse
        include Google::Apis::Core::Hashable
      
        # The return values for each script function, in a map of operation resource
        # names to the Operation containing the result of the process. The response
        # will contain either an error or the result of the script function.
        # Corresponds to the JSON property `results`
        # @return [Hash<String,Google::Apis::ScriptV1::Operation>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
    end
  end
end
