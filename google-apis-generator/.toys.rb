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

expand :clean, paths: :gitignore

expand :rspec do |t|
  t.libs = ["lib", "spec"]
  t.use_bundler
end

expand :yardoc do |t|
  t.generate_output_flag = true
  # t.fail_on_warning = true
  t.use_bundler
end

expand :gem_build

expand :gem_build, name: "install", install_gem: true
