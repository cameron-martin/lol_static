require 'spec_helper'

require 'lol_static/client'

describe LolStatic::Client, vcr: { cassette_name: 'realm' } do

  let(:client) { LolStatic::Client.new }

  describe '#item' do
    it 'does not raise error' do
      expect { client.item(1) }.to_not raise_error
    end
  end
end