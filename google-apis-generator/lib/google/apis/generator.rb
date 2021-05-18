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

require 'google/apis/discovery_v1'
require 'google/apis/generator/annotator'
require 'google/apis/generator/model'
require 'google/apis/generator/template'
require 'google/apis/generator/updater'
require 'google/apis/generator/version'
require 'active_support'
require 'active_support/core_ext'
require 'active_support/inflector'
require 'yaml'

module Google
  module Apis
    # Generates ruby classes for APIs from discovery documents
    # @private
    class Generator
      Discovery = Google::Apis::DiscoveryV1

      Result = Struct.new :files, :version_path, :changelog_path, :gem_name, :revision

      # Load templates
      def initialize(api_names: nil, api_names_out: nil)
        @names = Google::Apis::Generator::Names.new(api_names_out || File.join(Google::Apis::ROOT, "api_names_out.yaml"),
                                                    api_names || File.join(Google::Apis::ROOT, "api_names.yaml"))
        @templates = {}
      end

      # Generates ruby source for an API
      #
      # @param [String] json
      #  API Description, as JSON text
      # @return [Hash<String,String>]
      #  Hash of generated files keyed by path
      def render(json)
        api = parse_description(json)
        Annotator.process(api, @names)
        context = {
          "api" => api,
          "generator_version" => Google::Apis::Generator::VERSION
        }

        base_path = api.gem_name
        lib_path = File.join(base_path, "lib")
        spec_path = File.join(base_path, "spec")
        module_path = File.join(lib_path, ActiveSupport::Inflector.underscore(api.qualified_name))

        result = Result.new({},
                            File.join(module_path, "gem_version.rb"),
                            File.join(base_path, "CHANGELOG.md"),
                            api.gem_name,
                            api.revision)
        result.files[File.join(base_path, ".rspec")] = render_template("dot-rspec", context)
        result.files[File.join(base_path, ".yardopts")] = render_template("dot-yardopts", context)
        result.files[result.changelog_path] = render_template("initial-changelog.md", context)
        result.files[File.join(base_path, "Gemfile")] = render_template("gemfile", context)
        result.files[File.join(base_path, "#{api.gem_name}.gemspec")] = render_template("gemspec", context)
        result.files[File.join(base_path, "LICENSE.md")] = render_template("license.md", context)
        result.files[File.join(base_path, "OVERVIEW.md")] = render_template("overview.md", context)
        result.files[File.join(base_path, "Rakefile")] = render_template("rakefile", context)
        result.files[File.join(lib_path, "#{api.gem_name}.rb")] = render_template("entry-point.rb", context)
        result.files[module_path + ".rb"] = render_template("module.rb", context)
        result.files[File.join(module_path, "classes.rb")] = render_template("classes.rb", context)
        result.files[File.join(module_path, "representations.rb")] = render_template("representations.rb", context)
        result.files[File.join(module_path, "service.rb")] = render_template("service.rb", context)
        result.files[result.version_path] = render_template("initial-gem_version.rb", context)
        result.files[File.join(spec_path, "generated_spec.rb")] = render_template("generated_spec.rb", context)
        result.files[File.join(base_path, ".repo-metadata.json")] = render_template("repo-metadata.json", context)
        result
      end

      def render_template(name, context)
        (@templates[name] ||= Template.load(name)).render(context)
      end

      # Dump mapping of API names
      # @return [String] Mapping of paths to ruby names in YAML format
      def dump_api_names
        @names.dump
      end

      def parse_description(json)
        Discovery::RestDescription::Representation.new(Discovery::RestDescription.new).from_json(json)
      end
    end
  end
end
