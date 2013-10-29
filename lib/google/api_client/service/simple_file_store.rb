# Copyright 2013 Google Inc.
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

module Google
  class APIClient
    class Service

      # Simple file store to be used in the event no ActiveSupport cache store
      # is provided. This is not thread-safe, and does not support a number of
      # features (such as expiration), but it's useful for the simple purpose of
      # caching discovery documents to disk.
      # Implements the basic cache methods of ActiveSupport::Cache::Store in a
      # limited fashion.
      class SimpleFileStore

        # Creates a new SimpleFileStore.
        #
        # @param [String] file_path
        #   The path to the cache file on disk.
        # @param [Object] options
        #   The options to be used with this SimpleFileStore. Not implemented.
        def initialize(file_path, options = nil)
          @file_path = file_path.to_s
        end

        # Returns true if a key exists in the cache.
        #
        # @param [String] name
        #   The name of the key. Will always be converted to a string.
        # @param [Object] options
        #   The options to be used with this query. Not implemented.
        def exist?(name, options = nil)
          read_file
          @cache.nil? ? nil : @cache.include?(name.to_s)
        end

        # Fetches data from the cache and returns it, using the given key.
        # If the key is missing and no block is passed, returns nil.
        # If the key is missing and a block is passed, executes the block, sets
        # the key to its value, and returns it.
        #
        # @param [String] name
        #   The name of the key. Will always be converted to a string.
        # @param [Object] options
        #   The options to be used with this query. Not implemented.
        # @yield [String]
        #   optional block with the default value if the key is missing
        def fetch(name, options = nil)
          read_file
          if block_given?
            entry = read(name.to_s, options)
            if entry.nil?
              value = yield name.to_s
              write(name.to_s, value)
              return value
            else
              return entry
            end
          else
            return read(name.to_s, options)
          end
        end

        # Fetches data from the cache, using the given key.
        # Returns nil if the key is missing.
        #
        # @param [String] name
        #   The name of the key. Will always be converted to a string.
        # @param [Object] options
        #   The options to be used with this query. Not implemented.
        def read(name, options = nil)
          read_file
          @cache.nil? ? nil : @cache[name.to_s]
        end

        # Writes the value to the cache, with the key.
        #
        # @param [String] name
        #   The name of the key. Will always be converted to a string.
        # @param [Object] value
        #   The value to be written.
        # @param [Object] options
        #   The options to be used with this query. Not implemented.
        def write(name, value, options = nil)
          read_file
          @cache = {} if @cache.nil?
          @cache[name.to_s] = value
          write_file
          return nil
        end

        # Deletes an entry in the cache.
        # Returns true if an entry is deleted.
        #
        # @param [String] name
        #   The name of the key. Will always be converted to a string.
        # @param [Object] options
        #   The options to be used with this query. Not implemented.
        def delete(name, options = nil)
          read_file
          return nil if @cache.nil?
          if @cache.include? name.to_s
            @cache.delete name.to_s
            write_file
            return true
          else
            return nil
          end
        end

        protected

        # Read the entire cache file from disk.
        # Will avoid reading if there have been no changes.
        def read_file
          if !File.exists? @file_path
            @cache = nil
          else
            # Check for changes after our last read or write.
            if @last_change.nil? || File.mtime(@file_path) > @last_change
              File.open(@file_path) do |file|
                @cache = Marshal.load(file)
                @last_change = file.mtime
              end
            end
          end
          return @cache
        end

        # Write the entire cache contents to disk.
        def write_file
          File.open(@file_path, 'w') do |file|
            Marshal.dump(@cache, file)
          end
          @last_change = File.mtime(@file_path)
        end
      end
    end
  end
end