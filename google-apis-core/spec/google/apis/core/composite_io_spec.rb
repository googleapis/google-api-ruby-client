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
require 'google/apis/core/composite_io'

RSpec.describe Google::Apis::Core::CompositeIO do

  shared_examples 'should act like IO' do
    it 'should read from all IOs' do
      expect(io.read).to eq 'Hello Cruel World'
    end

    it 'should respond to size' do
      expect(io.size).to eq 17
    end

    it 'should respond to pos=' do
      io.pos = 6
      expect(io.read).to eq('Cruel World')
    end

    it 'should reject negative positions' do
      expect { io.pos = -1 }.to raise_error(ArgumentError)
    end


    it 'should return nil if position beyond size' do
      io.pos = 20
      expect(io.read).to be_nil
    end

    it 'should be readable after rewinding' do
      expect(io.read).to eq 'Hello Cruel World'
      expect(io.read).to be_nil
      io.rewind
      expect(io.read).to eq 'Hello Cruel World'
    end
  end

  context 'with StringIOs' do
    let(:io) do
      Google::Apis::Core::CompositeIO.new(
          StringIO.new("Hello "),
          StringIO.new("Cruel "),
          StringIO.new("World"))
    end
    include_examples 'should act like IO'
  end

  context 'with Files' do
    let(:io) do
      files = []
      dir = Dir.mktmpdir
      ['Hello ', 'Cruel ', 'World'].each_with_index do |text, index|
        name = File.join(dir, "f#{index}")
        File.open(name, 'w') { |f| f.write(text) }
        files << name
      end
      Google::Apis::Core::CompositeIO.new(files.map { |name| File.open(name, 'r') })
    end
    include_examples 'should act like IO'
  end

end