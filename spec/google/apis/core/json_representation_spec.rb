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
      attr_accessor :unset_value
      attr_accessor :nil_value
      attr_accessor :numeric_value
      attr_accessor :string_value
      attr_accessor :boolean_value_true
      attr_accessor :boolean_value_false
      attr_accessor :date_value
      attr_accessor :nil_date_value
      attr_accessor :bytes_value
      attr_accessor :items
      attr_accessor :child
      attr_accessor :children
    end
  end

  let(:representer_class) do
    klass = child_class
    Class.new(Google::Apis::Core::JsonRepresentation) do
      property :unset_value, as: 'unsetValue'
      property :nil_value, as: 'nilValue'
      property :numeric_value, as: 'numericValue'
      property :string_value, as: 'stringValue'
      property :boolean_value_true, as: 'booleanValueTrue'
      property :boolean_value_false, as: 'booleanValueFalse'
      property :date_value, as: 'dateValue', type: DateTime
      property :nil_date_value, as: 'nullDateValue', type: DateTime
      property :bytes_value, as: 'bytesValue', base64: true
      property :items
      property :child, class: klass do
        property :value
      end
      collection :children, class: klass do
        property :value
      end
    end
  end

  shared_examples 'it serializes' do
    it 'does not serialize unset values' do
      expect(json).not_to have_json_path('unsetValue')
    end

    it 'serializes explicit nil values' do
      expect(json).to be_json_eql(%(null)).at_path('nilValue')
    end

    it 'serializes numeric values' do
      expect(json).to be_json_eql(%(123)).at_path('numericValue')
    end

    it 'serializes string values' do
      expect(json).to be_json_eql(%("test")).at_path('stringValue')
    end

    it 'serializes boolean values' do
      expect(json).to be_json_eql(%(true)).at_path('booleanValueTrue')
      expect(json).to be_json_eql(%(false)).at_path('booleanValueFalse')
    end

    it 'serializes date values' do
      expect(json).to be_json_eql(%("2015-05-01T12:00:00.000+00:00")).at_path('dateValue')
    end

    it 'allows nil date values' do
      expect(json).to be_json_eql(%(null)).at_path('nullDateValue')
    end

    it 'serializes byte values to base64' do
      expect(json).to be_json_eql(%("SGVsbG8gd29ybGQ=")).at_path('bytesValue')
    end

    it 'serializes basic collections' do
      expect(json).to be_json_eql(%([1,2,3])).at_path('items')
    end

    it 'serializes nested objects' do
      expect(json).to be_json_eql(%({"value" : "child"})).at_path('child')
    end

    it 'serializes object collections' do
      expect(json).to be_json_eql(%([{"value" : "child"}])).at_path('children')
    end
  end

  context 'with model object' do
    let(:json) { representer_class.new(model).to_json(user_options: { skip_undefined: true }) }
    let(:model) do
      model = model_class.new
      model.nil_value = nil
      model.numeric_value = 123
      model.string_value = 'test'
      model.date_value = DateTime.new(2015, 5, 1, 12)
      model.boolean_value_true = true
      model.boolean_value_false = false
      model.bytes_value = 'Hello world'
      model.items = [1, 2, 3]
      model.child = child_class.new
      model.child.value = 'child'
      model.children = [model.child]
      model.nil_date_value = nil
      model
    end

    include_examples 'it serializes'

  end

  context 'with hash' do
    let(:json) { representer_class.new(model).to_json(user_options: { skip_undefined: true }) }
    let(:model) do
      {
        nil_value: nil,
        string_value: 'test',
        numeric_value: 123,
        date_value: DateTime.new(2015, 5, 1, 12),
        nil_date_value: nil,
        boolean_value_true: true,
        boolean_value_false: false,
        bytes_value: 'Hello world',
        items: [1, 2, 3],
        child: {
          value: 'child'
        },
        children: [{ value: 'child' }]
      }
    end

    include_examples 'it serializes'
  end

  context 'when de-serializing' do
    let(:model) { representer_class.new(model_class.new).from_json(json) }
    let(:json) do
      json = <<EOF
{ "stringValue": "test",
  "nilValue": null,
  "booleanValueTrue": true,
  "booleanValueFalse": false,
  "numericValue": 123,
  "dateValue": "2015-05-01T12:00:00+00:00",
  "bytesValue": "SGVsbG8gd29ybGQ=",
  "items": [1,2,3],
  "child": {"value" : "hello"},
  "children": [{"value" : "hello"}]
}
EOF
    end

    it 'deserializes string values' do
      expect(model.string_value).to eql 'test'
    end

    it 'deserializes null values' do
      expect(model.nil_value).to be_nil
    end

    it 'deserializes numeric values' do
      expect(model.numeric_value).to eql 123
    end

    it 'deserializes boolean values' do
      expect(model.boolean_value_true).to be_truthy
      expect(model.boolean_value_false).to be_falsey
    end

    it 'deserializes date values' do
      expect(model.date_value).to eql DateTime.new(2015, 5, 1, 12)
    end

    it 'deserializes basic collections' do
      expect(model.items).to contain_exactly(1, 2, 3)
    end

    it 'deserializes nested objects' do
      expect(model.child.value).to eql 'hello'
    end

    it 'serializes object collections' do
      expect(model.children[0].value).to eql 'hello'
    end
  end
end
