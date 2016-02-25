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
require 'google/apis/generator'
require 'tmpdir'
require 'fileutils'

# TODO - Naked arrays in method requests/responses

RSpec.describe Google::Apis::Generator do
  include TestHelpers

  context 'with test API' do
    before(:context) do
      generator = Google::Apis::Generator.new(api_names: File.join(FIXTURES_DIR, 'files', 'api_names.yaml'))
      discovery = File.read(File.join(FIXTURES_DIR, 'files', 'test_api.json'))
      generated_files = generator.render(discovery)
      puts generator.dump_api_names
      tempdir = Dir.mktmpdir
      generated_files.each do |key, content|
        path = File.join(tempdir, key)
        FileUtils.mkdir_p(File.dirname(path))
        File.open(path, 'w') do |f|
          f.write(content)
        end
      end
      $LOAD_PATH.unshift(tempdir)
      require 'google/apis/test_v1'
    end

    let(:service) { Google::Apis::TestV1::TestService.new }

    context 'with the generated service' do
      it 'should set the base URL' do
        expect(service.root_url.to_s).to eql('https://www.googleapis.com/')
      end

      it 'should define global methods from discovery' do
        expect(service.method(:query)).to_not be_nil
      end

      it 'should define parameters on methods' do
        parameters = service.method(:query).parameters.map { |(_k, v)| v }
        expect(parameters).to include(:s, :i, :n, :b, :a, :e, :er, :sr)
      end

      it 'should modify parameter names that are ruby keywords' do
        parameters = service.method(:query).parameters.map { |(_k, v)| v }
        expect(parameters).to include(:do_)
      end

      it 'should define global parameters on methods' do
        parameters = service.method(:query).parameters.map { |(_k, v)| v }
        expect(parameters).to include(:fields, :quota_user, :user_ip)
      end

      it 'should include standard options & block' do
        parameters = service.method(:query).parameters.map { |(_k, v)| v }
        expect(parameters).to include(:options, :block)
      end

      it 'should define AUTH_TEST scope' do
        expect(Google::Apis::TestV1::AUTH_TEST).to eql ('https://www.googleapis.com/auth/test')
      end

      it 'should define AUTH_TEST_READONLY scope' do
        expect(Google::Apis::TestV1::AUTH_TEST_READONLY).to eql ('https://www.googleapis.com/auth/test.readonly')
      end

      context 'when simplifying class names' do
        it 'should simplify the TestAnotherThing name' do
          expect { Google::Apis::TestV1::AnotherThing.new }.not_to raise_error
        end

        it 'should not simplify the TestThing name' do
          expect { Google::Apis::TestV1::TestThing.new }.not_to raise_error
        end
      end


      context 'with the Thing resource' do
        it 'should define the create method`' do
          expect(service.method(:create_thing)).to_not be_nil
        end

        it 'should define the list method`' do
          expect(service.method(:list_things)).to_not be_nil
        end

        it 'should define the get method`' do
          expect(service.method(:get_thing)).to_not be_nil
        end

        it 'should include the download_dest parameter for get_thing' do
          parameters = service.method(:get_thing).parameters.map { |(_k, v)| v }
          expect(parameters).to include(:download_dest)
        end

        it 'should define the update method`' do
          expect(service.method(:update_thing)).to_not be_nil
        end

        it 'should include the upload_source parameter for update_thing' do
          parameters = service.method(:update_thing).parameters.map { |(_k, v)| v }
          expect(parameters).to include(:upload_source)
        end

        it 'should define subresource methods' do
          expect(service.method(:list_thing_subthings)).to_not be_nil
        end

        context 'With the from_json method' do
          let(:json) do
            <<EOF
{
  "name" : "A thing",
  "properties": {
    "prop_a" : "value_a"
  },
  "photo": {
    "filename": "image.jpg"
  },
  "hat": {
    "type": "topHat",
    "height": 100
  }
}
EOF
          end

          let(:thing) { Google::Apis::TestV1::Thing.from_json(json) }

          it 'should return a thing' do
            expect(thing).to be_instance_of(Google::Apis::TestV1::Thing)
          end

          it 'should parse properties' do
            expect(thing.name).to eq 'A thing'
          end

          it 'should parse subtypes' do
            expect(thing.photo.filename).to eq "image.jpg"
          end
        end

        context 'With the to_json method' do
          let(:thing) do
            Google::Apis::TestV1::Thing.new(
                name: "A thing",
                properties: {
                    prop_a: "value_a"
                },
                photo: {
                    filename: "image.jpg"
                },
                hat: {
                    type: "topHat",
                    height: 100
                }
            )
          end
        end
      end

      context 'with the get_thing method' do
        before(:example) do
          json = <<EOF
{
  "id" : "123",
  "name" : "A thing",
  "enabled": true,
  "properties": {
    "prop_a" : "value_a",
    "prop_b" : "value_b"
  },
  "photo": {
    "filename": "image.jpg"
  },
  "hat": {
    "type": "baseballHat",
    "color": "red"
  }
}
EOF
          stub_request(:get, 'https://www.googleapis.com/test/v1/things/123')
            .to_return(headers: { 'Content-Type' => 'application/json' }, body: json)
        end

        let(:thing) { service.get_thing('123') }

        it 'should return a Thing' do
          expect(thing).to be_instance_of(Google::Apis::TestV1::Thing)
        end

        it 'should set attributes' do
          expect(thing.id).to eql '123'
        end

        it 'should alias boolean methods on Thing' do
          expect(thing.enabled?).to be true
        end

        it 'should return a Hash for properties' do
          expect(thing.properties).to be_instance_of(Hash)
        end

        it 'should set hash elements' do
          expect(thing.properties).to include('prop_a' => 'value_a')
        end

        it 'should return the correct variant type for hat' do
          expect(thing.hat).to be_instance_of(Google::Apis::TestV1::BaseballHat)
        end

        it 'should return the correct variant properties for hat' do
          expect(thing.hat.color).to eql 'red'
        end

        it 'should return a photo' do
          expect(thing.photo).to be_instance_of(Google::Apis::TestV1::Thing::Photo)
        end

        it 'should return photo properties' do
          expect(thing.photo.filename).to eql 'image.jpg'
        end
      end

      context 'with the create_thing method' do
        before(:example) do
          json = <<EOF
{
  "id" : "123",
  "name" : "A thing",
  "properties": {
    "prop_a" : "value_a"
  },
  "photo": {
    "filename": "image.jpg"
  },
  "hat": {
    "type": "topHat",
    "height": 100
  }
}
EOF
          stub_request(:post, 'https://www.googleapis.com/test/v1/things')
            .to_return(headers: { 'Content-Type' => 'application/json' }, body: json)
        end

        let(:thing) do
          thing = Google::Apis::TestV1::Thing.new(name: 'A thing', properties: { 'prop_a' => 'value_a' })
          thing.photo = Google::Apis::TestV1::Thing::Photo.new(filename: 'image.jpg')
          thing.hat = Google::Apis::TestV1::TopHat.new(type: 'topHat', height: 100)
          service.create_thing(thing)
        end

        it 'should serialize the thing' do
          expected_body = <<EOF
{
  "name" : "A thing",
  "properties": {
    "prop_a" : "value_a"
  },
  "photo": {
    "filename": "image.jpg"
  },
  "hat": {
    "type": "topHat",
    "height": 100
  }
}
EOF
          expect(thing).to be_instance_of(Google::Apis::TestV1::Thing)
          expect(a_request(:post, 'https://www.googleapis.com/test/v1/things')
            .with { |req| expect(req.body).to be_json_eql(expected_body) }).to have_been_made
        end

        it 'should an updated id' do
          expect(thing.id).to eql '123'
        end
      end

      context 'with the query method' do
        before(:example) do
          body = %({"rows": [{"value": "hello"}, {"value": "world"}]})
          stub_request(:get, 'https://www.googleapis.com/test/v1/query')
            .to_return(headers: { 'Content-Type' => 'application/json' }, body: body)
        end

        it 'should return query results' do
          results = service.query
          expect(results).to be_instance_of(Google::Apis::TestV1::QueryResults)
        end

        it 'should return an array for items' do
          results = service.query
          expect(results.rows).to be_instance_of(Array)
        end

        it 'should return items of type Row' do
          results = service.query
          expect(results.rows.first).to be_instance_of(Google::Apis::TestV1::Row)
        end

        it 'should return values for rows' do
          results = service.query
          expect(results.rows[1].value).to eql('world')
        end
      end
    end
  end
end
