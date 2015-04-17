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

require 'google/apis/generator/discovery'
require 'google/apis/generator/model'
require 'google/apis/generator/template'
require 'active_support/inflector'

module Google
  module Apis
    # Generates ruby classes for APIs from discovery documents
    # @private
    class Generator
      # Load templates
      def initialize()
        @module_template = Template.load('module.rb')
        @service_template = Template.load('service.rb')
        @classes_template = Template.load('classes.rb')
        @representations_template = Template.load('representations.rb')
      end

      # Generates ruby source for an API
      #
      # @param [String] json
      #   API discovery document
      # @return [Hash<String,String>]
      #  Hash of generated files keyed by path
      def render(json)
        discovery = Discovery.new(json)
        api = discovery.parse
        base_path = ActiveSupport::Inflector.underscore(api.qualified_name)
        context = {
            'api' => api,
            'classes' => api.classes
        }
        files = {}
        files[base_path + '.rb'] = @module_template.render(context)
        files[File.join(base_path, 'service.rb')] = @service_template.render(context)
        files[File.join(base_path, 'classes.rb')] = @classes_template.render(context)
        files[File.join(base_path, 'representations.rb')] = @representations_template.render(context)
        files
      end
    end
  end
end
