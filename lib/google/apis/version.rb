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

require 'open3'

module Google
  module Apis
    # Client library version
    VERSION = "0.50.0".freeze

    # Current operating system
    # @private
    OS_VERSION = begin
      if RUBY_PLATFORM =~ /mswin|win32|mingw|bccwin|cygwin/
        output, _ = Open3.capture2('ver')
        output.sub(/\s*\[Version\s*/, '/').sub(']', '')
      elsif RUBY_PLATFORM =~ /darwin/i
        output, _ = Open3.capture2('sw_vers', '-productVersion')
        "Mac OS X/#{output}"
      elsif RUBY_PLATFORM == 'java'
        require 'java'
        name = java.lang.System.getProperty('os.name')
        version = java.lang.System.getProperty('os.version')
        "#{name}/#{version}"
      else
        output, _ = Open3.capture2('uname', '-sr')
        output.sub(' ', '/')
      end.strip
    rescue
      RUBY_PLATFORM
    end
  end
end
