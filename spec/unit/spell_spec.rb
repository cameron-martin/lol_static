require 'spec_helper'

require 'lol_static/spell'

describe LolStatic::Spell do

  describe '.key' do
    it 'returns spell' do
      expect(LolStatic::Spell.key).to eq('spell')
    end
  end
end