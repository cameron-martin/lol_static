require 'spec_helper'

require 'lol_static/champion'

describe LolStatic::Champion do

  use_vcr_cassette 'realm'

  let(:id) { 'Champion' }

  let(:spell) { LolStatic::Champion.new(id) }

  describe '.api_version' do
    it 'returns api version' do
      expect(LolStatic::Champion.api_version).to eq('4.4.3')
    end
  end

  describe '#image_url' do
    it 'returns image url' do
      expect(spell.image_url).to eq("http://ddragon.leagueoflegends.com/cdn/4.4.3/img/champion/#{id}.png")
    end
  end
end