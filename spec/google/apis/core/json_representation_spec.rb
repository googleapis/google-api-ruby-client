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
require 'google/apis/core/json_representation'

RSpec.describe Google::Apis::Core::JsonRepresentation do

  let(:child_class) do
    Class.new do
      attr_accessor :value
    end
  end

  let(:model_class) do
    Class.new do
      attr_accessor :value
      attr_accessor :date
      attr_accessor :items
      attr_accessor :child
      attr_accessor :children
    end
  end

  let(:representer_class) do
    klass = child_class
    Class.new(Google::Apis::Core::JsonRepresentation) do
      property :value
      property :date, type: DateTime
      property :items
      property :child, class: klass do
        property :value
      end
      collection :children, class: klass do
        property :value
      end
    end
  end

  context 'when serializing' do
    let(:json) { representer_class.new(model).to_json(skip_undefined:true) }
    let(:model) { model_class.new }

    it 'does not serialize unset values' do
      expect(json).to be_json_eql(%({}))
    end

    it 'serializes explicit nil values' do
      model.value = nil
      expect(json).to be_json_eql(%({"value": null}))
    end

    it 'serializes numeric values' do
      model.value = 123
      expect(json).to be_json_eql(%({"value": 123}))
    end

    it 'serializes string values' do
      model.value = 'test'
      expect(json).to be_json_eql(%({"value": "test"}))
    end

    it 'serializes boolean values' do
      model.value = true
      expect(json).to be_json_eql(%({"value": true}))
    end

    it 'serializes date values' do
      model.date = DateTime.new(2015,5,1,12)
      expect(json).to be_json_eql(%({"date": "2015-05-01T12:00:00+00:00"}))
    end

    it 'serializes basic collections' do
      model.items = [1,2,3]
      expect(json).to be_json_eql(%({"items": [1,2,3]}))
    end

    it 'serializes nested objects' do
      child = child_class.new
      child.value = "child"
      model.child = child
      expect(json).to be_json_eql(%({"child": {"value" : "child"}}))
    end

    it 'serializes object collections' do
      child = child_class.new
      child.value = "child"
      model.children = [child]
      expect(json).to be_json_eql(%({"children": [{"value" : "child"}]}))
    end
  end

  context 'when de-serializing' do
    let(:model) { representer_class.new(model_class.new).from_json(@json) }

    it 'deserializes string values' do
      @json = %({"value": "hello"})
      expect(model.value).to eql 'hello'
    end

    it 'deserializes null values' do
      @json = %({"value": null})
      expect(model.value).to be_nil
    end

    it 'deserializes numeric values' do
      @json = %({"value": 123})
      expect(model.value).to eql 123
    end

    it 'deserializes boolean values' do
      @json = %({"value": true})
      expect(model.value).to be_truthy
    end

    it 'deserializes date values' do
      @json = %({"date": "2015-05-01T12:00:00+00:00"})
      expect(model.date).to eql DateTime.new(2015,5,1,12)
    end

    it 'deserializes basic collections' do
      @json = %({"value": [1,2,3]})
      expect(model.value).to contain_exactly(1,2,3)
    end

    it 'deserializes nested objects' do
      @json = %({"child": {"value" : "hello"}})
      expect(model.child.value).to eql "hello"
    end

    it 'serializes object collections' do
      @json = %({"children": [{"value" : "hello"}]})
      expect(model.children[0].value).to eql "hello"
    end
  end
end