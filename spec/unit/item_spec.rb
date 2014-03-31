require 'spec_helper'

require 'lol_static/item'

describe LolStatic::Item do

  describe '.key' do
    it 'returns item' do
      expect(LolStatic::Item.key).to eq('item')
    end
  end

end