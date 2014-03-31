require 'spec_helper'

require 'lol_static/champion'

describe LolStatic::Champion do

  describe '.key' do
    it 'returns champion' do
      expect(LolStatic::Champion.key).to eq('champion')
    end
  end

end