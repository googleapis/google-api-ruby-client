# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "pathname"
require "uri"

base_dir = Pathname.new context_directory
cur_dir = Pathname.new Dir.getwd
unless base_dir == cur_dir
  relative_path = cur_dir.relative_path_from(base_dir).to_s.split("/")
  set_context_directory base_dir.join(*relative_path[0..1]).to_s
  if relative_path.first == "generated" && relative_path.size >= 2

    expand :rspec do |t|
      t.libs = ["lib", "spec"]
      t.use_bundler
    end

    expand :yardoc do |t|
      t.generate_output_flag = true
      t.use_bundler
    end

    expand :gem_build

  elsif ["google-apis-core", "google-apis-generator"].include? relative_path.first

    tool "spec", delegate_to: ["spec"]

    tool "yardoc", delegate_to: ["yardoc"]

    tool "build", delegate_to: ["build"]

  end
end
