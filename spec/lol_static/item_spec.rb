require 'spec_helper'

require 'lol_static/item'

describe LolStatic::Item do

  use_vcr_cassette 'realm'

  let(:id) { 1 }
  let(:item) { LolStatic::Item.new(id) }

  describe '.api_version' do
    it 'returns api version' do
      expect(LolStatic::Item.api_version).to eq('4.4.3')
    end
  end

  describe '#image_url' do
    it 'returns image url' do
      item = LolStatic::Item.new(1)
      expect(item.image_url).to eq("http://ddragon.leagueoflegends.com/cdn/4.4.3/img/item/#{id}.png")
    end
  end
end