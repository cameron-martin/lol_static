require 'spec_helper'

require 'lol_static/item'

describe LolStatic::Item do
  describe '#image_url' do
    it 'returns image url' do
      VCR.use_cassette('realm') do
        item = LolStatic::Item.new(1)
        expect(item.image_url).to eq('http://ddragon.leagueoflegends.com/cdn/4.4.3/img/item/1.png')
      end
    end
  end
end