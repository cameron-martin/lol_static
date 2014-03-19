require 'lol_static'

describe LolStatic::Item do
  describe '.api_version' do
    it 'returns an api version' do
      expect(LolStatic::Item.api_version).to match(/^(?:\d+.)*\d+$/)
    end
  end

  describe '#image_url' do
    it 'returns image url' do
      item = LolStatic::Item.new(1)
      expect(item.image_url).to eq('http://ddragon.leagueoflegends.com/cdn/4.4.3/img/item/1.png')
    end
  end
end