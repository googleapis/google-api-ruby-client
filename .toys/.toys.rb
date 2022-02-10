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

mixin "yoshi-utils" do
  def yoshi_utils
    @yoshi_utils ||= begin
      require "yoshi/utils"
      ::Yoshi::Utils.new context: self
    end
  end
end

mixin "yoshi-pr-generator" do
  on_include do
    include "yoshi-utils" unless include? "yoshi-utils"
  end

  def yoshi_pr_generator
    @yoshi_pr_generator ||= begin
      require "yoshi/pr_generator"
      ::Yoshi::PrGenerator.new yoshi_utils: yoshi_utils
    end
  end
end
