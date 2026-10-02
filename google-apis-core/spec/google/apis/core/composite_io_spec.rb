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

    it 'should advance position by the bytes read across components' do
      expect(io.read(8)).to eq 'Hello Cr'
      expect(io.pos).to eq 8
      expect(io.read).to eq 'uel World'
      expect(io.pos).to eq 17
      expect(io.read(1)).to be_nil
      expect(io.pos).to eq 17
    end

    it 'should return the cleared output buffer for zero-length reads' do
      buffer = +'old contents'
      expect(io.read(0, buffer)).to equal(buffer)
      expect(buffer).to eq ''
      expect(io.pos).to eq 0
      expect(io.read).to eq 'Hello Cruel World'
      expect(io.read(0)).to eq ''
      expect(io.pos).to eq 17
    end

    it 'should advance from an explicitly assigned position' do
      io.pos = 6
      expect(io.read(2)).to eq 'Cr'
      expect(io.pos).to eq 8
    end

    it 'should preserve the underlying rejection of negative lengths' do
      expect { io.read(-1) }.to raise_error(ArgumentError)
      expect(io.pos).to eq 0
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
          StringIO.new(+"Hello "),
          StringIO.new(+"Cruel "),
          StringIO.new(+"World"))
    end
    include_examples 'should act like IO'
  end

  it 'should count multibyte reads in bytes rather than characters' do
    io = described_class.new(StringIO.new('é'), StringIO.new('猫!'))
    expect(io.read(5)).to eq 'é猫'.b
    expect(io.pos).to eq 5
    expect(io.read).to eq '!'
    expect(io.pos).to eq 6
    io.rewind
    expect(io.read).to eq 'é猫!'
    expect(io.pos).to eq 6
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
