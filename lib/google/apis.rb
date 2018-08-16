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

require 'google/apis/version'
require 'logger'

module Google
  module Apis
    ROOT = File.expand_path('..', File.dirname(__dir__))

    # On March 31, 2019, set supported version to 2.4 and recommended to 2.6.
    # Thereafter, follow the MRI support schedule: supported means non-EOL,
    # and recommended means in normal (rather than security) maintenance.
    # See https://www.ruby-lang.org/en/downloads/branches/
    ##
    # Minimum "supported" Ruby version (non-EOL)
    # @private
    #
    SUPPORTED_VERSION_THRESHOLD = '1.9'.freeze
    ##
    # Minimum "recommended" Ruby version (normal maintenance)
    # @private
    #
    RECOMMENDED_VERSION_THRESHOLD = '2.4'.freeze
    ##
    # Check Ruby version and emit a warning if it is old
    # @private
    #
    def self.warn_on_old_ruby_version
      return if ENV['GOOGLE_CLOUD_SUPPRESS_RUBY_WARNINGS']
      cur_version = Gem::Version.new RUBY_VERSION
      if cur_version < Gem::Version.new(SUPPORTED_VERSION_THRESHOLD)
        warn_unsupported_ruby cur_version, RECOMMENDED_VERSION_THRESHOLD
      elsif cur_version < Gem::Version.new(RECOMMENDED_VERSION_THRESHOLD)
        warn_nonrecommended_ruby cur_version, RECOMMENDED_VERSION_THRESHOLD
      end
    rescue ArgumentError
      warn 'Unable to determine current Ruby version.'
    end

    ##
    # Print a warning for an EOL version of Ruby
    # @private
    #
    def self.warn_unsupported_ruby cur_version, recommended_version
      warn "WARNING: You are running Ruby #{cur_version}, which has reached" \
        ' end-of-life and is no longer supported by Ruby Core.'
      warn 'The Google Cloud API clients work best on supported versions of' \
        ' Ruby. It is strongly recommended that you upgrade to Ruby' \
        " #{recommended_version} or later."
      warn 'See https://www.ruby-lang.org/en/downloads/branches/ for more' \
        ' info on the Ruby maintenance schedule.'
      warn 'To suppress this message, set the' \
        ' GOOGLE_CLOUD_SUPPRESS_RUBY_WARNINGS environment variable.'
    end

    ##
    # Print a warning for a supported but nearing EOL version of Ruby
    # @private
    #
    def self.warn_nonrecommended_ruby cur_version, recommended_version
      warn "WARNING: You are running Ruby #{cur_version}, which is nearing" \
        ' end-of-life.'
      warn 'The Google Cloud API clients work best on supported versions of' \
        " Ruby. Consider upgrading to Ruby #{recommended_version} or later."
      warn 'See https://www.ruby-lang.org/en/downloads/branches/ for more' \
        ' info on the Ruby maintenance schedule.'
      warn 'To suppress this message, set the' \
        ' GOOGLE_CLOUD_SUPPRESS_RUBY_WARNINGS environment variable.'
    end

    # @!attribute [rw] logger
    # @return [Logger] The logger.
    def self.logger
      @logger ||= rails_logger || default_logger
    end

    class << self
      attr_writer :logger
    end

    private

    # Create and configure a logger
    # @return [Logger]
    def self.default_logger
      logger = Logger.new($stdout)
      logger.level = Logger::WARN
      logger
    end

    # Check to see if client is being used in a Rails environment and get the logger if present.
    # Setting the ENV variable 'GOOGLE_API_USE_RAILS_LOGGER' to false will force the client
    # to use its own logger.
    #
    # @return [Logger]
    def self.rails_logger
      if 'true' == ENV.fetch('GOOGLE_API_USE_RAILS_LOGGER', 'true') &&
          defined?(::Rails) &&
          ::Rails.respond_to?(:logger) &&
          !::Rails.logger.nil?
        ::Rails.logger
      else
        nil
      end
    end
  end
end

Google::Apis::warn_on_old_ruby_version
