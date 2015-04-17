# Copyright (c) 2013 Mustafa Turan
#
# MIT License
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
module Google
  module Apis
    module Core
      # Adds to_hash to objects
      module Hashable
        # Convert object to hash representation
        #
        # @return [Hash]
        def to_h
          hash = {}
          instance_variables.each do |key|
            hash[key[1..-1].to_sym] = deep_to_hash(instance_variable_get(key))
          end
          hash
        end

        protected

        # Recursively serialize hash values
        #
        # @param [Hash] hash
        # @return [Hash]
        def convert_hash_values(hash)
          new_hash = {}
          hash.each do |key, val|
            new_hash[key] = deep_to_hash(val)
          end
          new_hash
        end

        # Recursively serialize array values
        #
        # @param [Array] array
        # @return [Array]
        def convert_array_values(array)
          new_array = []
          array.each_index do |index|
            new_array[index] = deep_to_hash(array[index])
          end
          new_array
        end

        # Recursively serialize an object
        #
        # @param [Object] val
        # @return [Hash]
        def deep_to_hash(val)
          # puts val
          if val.is_a?(Hash)
            convert_hash_values(val)
          elsif val.is_a?(Array)
            convert_array_values(val)
          elsif val.respond_to?(:to_h)
            val.to_h
          else
            val
          end
        end
      end
    end
  end
end
