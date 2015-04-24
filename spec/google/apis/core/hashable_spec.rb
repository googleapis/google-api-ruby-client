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
require 'google/apis/core/hashable'

RSpec.describe Google::Apis::Core::Hashable do
  let(:child_class) do
    Class.new do
      include Google::Apis::Core::Hashable
      attr_accessor :value
    end
  end

  let(:model_class) do
    Class.new do
      include Google::Apis::Core::Hashable
      attr_accessor :value
      attr_accessor :value2
      attr_accessor :children
    end
  end

  let(:model) do
    obj = model_class.new
    obj.value = 'hello'
    obj.value2 = {
      a: 'a'
    }
    child = child_class.new
    child.value = 'goodbye'
    obj.children = [child]
    obj
  end

  let(:hash) { model.to_h }

  it 'should serialize attributes' do
    expect(hash).to include(value: 'hello')
  end

  it 'should serialize collections' do
    expect(hash).to include(children: [{ value: 'goodbye' }])
  end

  it 'should serialize hashes' do
    expect(hash[:value2]).to include(a: 'a')
  end
end
