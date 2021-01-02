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

require "gems"

module Google
  module Apis
    class Generator
      # Matches generated files against current files and decides what to update
      # @private
      class Updater
        def initialize
          @gems_client = nil
          @current_rubygems_versions = {}
        end

        def analyze(base_dir, generator_result)
          modified_files = {}
          version_content = changelog_content = nil
          generator_result.files.each do |path, content|
            full_path = File.join(base_dir, path)
            old_content = File.read(full_path) if File.readable?(full_path)
            if path == generator_result.version_path
              version_content = old_content || content
            elsif path == generator_result.changelog_path
              changelog_content = old_content || content
            else
              modified_files[path] = content unless content == old_content
            end
          end
          unless modified_files.empty?
            desired_gem_version = next_rubygems_version(generator_result.gem_name)
            version_content, generator_version_change, revision_change =
                update_version_content(version_content, desired_gem_version, generator_result.revision)
            changelog_content = update_changelog_content(changelog_content, desired_gem_version, generator_version_change, revision_change)
            modified_files[generator_result.version_path] = version_content
            modified_files[generator_result.changelog_path] = changelog_content
          end
          modified_files
        end

        # @private
        def gems_client
          @gems_client ||= Gems::Client.new
        end

        # @private
        def current_rubygems_version(gem_name)
          @current_rubygems_versions[gem_name] ||= begin
            gems_client.info(gem_name)["version"]
          rescue Gems::NotFound
            "0.0.0"
          end
        end

        # @private
        def next_rubygems_version(gem_name)
          major, minor = current_rubygems_version(gem_name).split(".")
          "#{major.to_i}.#{minor.to_i + 1}.0"
        end

        # @private
        def update_version_content(content, desired_gem_version, new_revision)
          generator_version_change = revision_change = nil
          modified_content = content.dup
          modified_content.sub!(/GEM_VERSION = "([\w\.]*)"/) do |*|
            "GEM_VERSION = \"#{desired_gem_version}\""
          end or raise "gem_version.rb is missing GEM_VERSION"
          modified_content.sub!(/GENERATOR_VERSION = "([\w\.]*)"/) do |*|
            generator_version_change = Generator::VERSION unless Regexp.last_match[1] == Generator::VERSION
            "GENERATOR_VERSION = \"#{Generator::VERSION}\""
          end or raise "gem_version.rb is missing GENERATOR_VERSION"
          modified_content.sub!(/REVISION = "([\w\.]*)"/) do |*|
            revision_change = new_revision unless Regexp.last_match[1] == new_revision
            "REVISION = \"#{new_revision}\""
          end or raise "gem_version.rb is missing REVISION"
          [modified_content, generator_version_change, revision_change]
        end

        # @private
        def update_changelog_content(content, desired_gem_version, generator_version_change, revision_change)
          lines = parse_existing_changelog_entry(content, desired_gem_version)
          modify_changelog_lines(lines, generator_version_change, revision_change)
          entry = assemble_changelog_entry(lines, desired_gem_version)
          replace_changelog_entry(content, desired_gem_version, entry)
        end

        # @private
        def parse_existing_changelog_entry(content, desired_gem_version)
          quoted_gem_version = Regexp.quote(desired_gem_version)
          match = /\n+### v#{quoted_gem_version} \([\d-]+\)\n+((?:[^#][^\n]*\n+)*)(?=#|$)/.match content
          return [] unless match
          match[1].split("\n")
        end

        # @private
        def modify_changelog_lines(lines, generator_version_change, revision_change)
          if generator_version_change
            lines.reject! { |line| line =~ /^\* Regenerated using generator version \d[\w\.]+/ }
            lines.unshift("* Regenerated using generator version #{generator_version_change}")
          end
          if revision_change
            lines.reject! { |line| line =~ /^\* Regenerated from discovery document revision \d+/ }
            lines.unshift("* Regenerated from discovery document revision #{revision_change}")
          end
          lines << "* Unspecified changes" if lines.empty?
        end

        # @private
        def assemble_changelog_entry(lines, desired_gem_version)
          entry_lines = lines.join("\n")
          date = Time.now.strftime("%Y-%m-%d")
          "\n\n### v#{desired_gem_version} (#{date})\n\n#{entry_lines}\n\n"
        end

        # @private
        def replace_changelog_entry(content, desired_gem_version, entry)
          quoted_gem_version = Regexp.quote(desired_gem_version)
          modified_content = content.dup
          modified_content.sub!(/\n+### v#{quoted_gem_version} \([\d-]+\)\n+(?:[^#][^\n]*\n+)*(?=#|$)/, entry) or
            modified_content.sub!(/^(\n*# [^\n]+)\n+(?=#|$)/, "\\1#{entry}") or
            raise "CHANGELOG doesn't seem to have the expected header"
          modified_content
        end
      end
    end
  end
end
