require 'spec_helper'

require 'lol_static/realm'

describe LolStatic::Realm, vcr: { cassette_name: 'realm' } do

  describe '#base_uri' do
    it 'returns correct uri' do
      realm = LolStatic::Realm.new
      expect(realm.base_uri).to eq('http://ddragon.leagueoflegends.com/cdn')
    end
  end

  describe '#api_version' do
    it 'returns correct version for item' do
      realm = LolStatic::Realm.new
      expect(realm.api_version('item')).to eq('4.4.3')
    end
  end
end