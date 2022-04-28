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

require "rspec"

RSpec.describe "Google::Apis::VerifiedaccessV2" do
  # Minimal test just to ensure no syntax errors in generated code
  it "should load" do
    expect do
      require "google/apis/verifiedaccess_v2"
    end.not_to raise_error
    expect do
      Google::Apis::VerifiedaccessV2::VerifiedaccessService.new
    end.not_to raise_error
  end
end
