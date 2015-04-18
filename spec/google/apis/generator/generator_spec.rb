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

# TODO:
# - Variant types
# - Class name simplification
# - Nested resources
# - Hash types (additionalProperties)
RSpec.describe Google::Apis::Generator do
  include TestHelpers

  context 'with test API' do
    before(:context) do
      generator = Google::Apis::Generator.new
      discovery = File.read(File.join(FIXTURES_DIR, 'files', 'test_api.json'))
      generated_files = generator.render(discovery)
      tempdir = Dir.mktmpdir
      generated_files.each do |key, content|
        path = File.join(tempdir, key)
        FileUtils.mkdir_p(File.dirname(path))
        File.open(path, 'w') do |f|
          puts content
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
        parameters = service.method(:query).parameters.map { |(k,v)| v }
        expect(parameters).to include(:s, :i, :n, :b, :a, :e, :er, :sr)
      end

      it 'should define global parameters on methods' do
        parameters = service.method(:query).parameters.map { |(k,v)| v }
        expect(parameters).to include(:fields, :quota_user, :user_ip)
      end

      it 'should include standard options & block' do
        parameters = service.method(:query).parameters.map { |(k,v)| v }
        expect(parameters).to include(:options, :block)
      end
      
      it 'should define AUTH_TEST scope' do
        expect(Google::Apis::TestV1::AUTH_TEST).to eql ('https://www.googleapis.com/auth/test')
      end

      it 'should define AUTH_TEST_READONLY scope' do
        expect(Google::Apis::TestV1::AUTH_TEST_READONLY).to eql ('https://www.googleapis.com/auth/test.readonly')
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
          parameters = service.method(:get_thing).parameters.map { |(k,v)| v }
          expect(parameters).to include(:download_dest)
        end

        it 'should define the update method`' do
          expect(service.method(:update_thing)).to_not be_nil
        end

        it 'should include the upload_source parameter for update_thing' do
          parameters = service.method(:update_thing).parameters.map { |(k,v)| v }
          expect(parameters).to include(:upload_source)
        end
      end

      context 'with the query method' do
        include_context 'HTTP client'

        let(:http_responses) do
          [ http_json_ok(%({"rows": [{"value": "hello"}, {"value": "world"}]})) ]
        end

        before(:example) { service.client = client }

        it 'should return query results' do
          results = service.query()
          expect(results).to be_instance_of(Google::Apis::TestV1::QueryResults)
        end

        it 'should return items of type Row' do
          results = service.query()
          expect(results.rows.first).to be_instance_of(Google::Apis::TestV1::Row)
        end

        it 'should return values for rows' do
          results = service.query()
          expect(results.rows[1].value).to eql('world')
        end

      end
    end
  end

end
