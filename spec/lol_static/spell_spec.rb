require 'spec_helper'

require 'lol_static/spell'

describe LolStatic::Spell do

  use_vcr_cassette 'realm'

  let(:id) {  }

  let(:spell) { LolStatic::Spell.new('Spell') }

  describe '.api_version' do
    it 'returns api version' do
      expect(LolStatic::Spell.api_version).to eq('4.4.3')
    end
  end

  describe '#image_url' do
    it 'returns image url' do
      expect(spell.image_url).to eq('http://ddragon.leagueoflegends.com/cdn/4.4.3/img/spell/Spell.png')
    end
  end
end