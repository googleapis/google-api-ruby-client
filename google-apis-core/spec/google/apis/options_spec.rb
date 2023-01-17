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

require 'spec_helper'
require 'google/apis/options'

RSpec.describe Google::Apis::RequestOptions do
  let(:options) { Google::Apis::RequestOptions.new }
  let(:defaults) { described_class.default }

  it 'should not merge nil values' do
    options.retries = 1
    expect(options.merge(authorization: 'foo').retries).to eql 1
  end

  it 'should merge non-nil values' do
    options.retries = 1
    expect(options.merge(authorization: 'foo').authorization).to eql 'foo'
  end

  it 'should merge from options' do
    opts = Google::Apis::RequestOptions.new
    opts.authorization = 'foo'
    expect(options.merge(opts).authorization).to eql 'foo'
  end

  it 'should allow nil in merge' do
    expect(options.merge(nil)).to be_an_instance_of(Google::Apis::RequestOptions)
  end

  it 'sets default values' do
    expect(defaults.retries).to eq(5) # Overriden in spec_helper.rb
    expect(defaults.max_elapsed_time).to eq(900)
    expect(defaults.base_interval).to eq(1)
    expect(defaults.max_interval).to eq(60)
    expect(defaults.multiplier).to eq(2)
    expect(defaults.normalize_unicode).to be false
    expect(defaults.skip_serialization).to be false
    expect(defaults.skip_deserialization).to be false
    expect(defaults.api_format_version).to be nil
    expect(defaults.use_opencensus).to be true
    expect(defaults.quota_project).to be_nil
    expect(defaults.upload_chunk_size).to eq(100 * 1024 * 1024)
 end
end
