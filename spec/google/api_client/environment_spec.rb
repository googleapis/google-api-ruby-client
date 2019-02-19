# encoding:utf-8

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

require 'spec_helper'

RSpec.describe Google::APIClient::ENV do

  context 'on MacOS (Darwin)' do
    before do
      Object.send(:remove_const, 'RUBY_PLATFORM')
      Object.const_set('RUBY_PLATFORM', 'x86_64-darwin14')
      allow_any_instance_of(Module).to receive(:`).and_return("10.13.5\n")
      if Object.const_defined?('Google::APIClient::ENV::OS_VERSION')
         Google::APIClient::ENV.send(:remove_const, 'OS_VERSION')
      end
    end

    subject(:environment) { Google::APIClient::ENV }

    it 'should return an OS_VERSION without carriage return char' do
      # Reloading in case previous tests have already loaded OS_VERSION
      load 'google/api_client/environment.rb'
      expect(environment::OS_VERSION).to be == 'Mac OS X/10.13.5'
    end
  end
end

