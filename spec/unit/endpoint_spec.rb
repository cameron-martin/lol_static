require 'spec_helper'

require 'lol_static/endpoint'

class ConcreteEndpoint < LolStatic::Endpoint

  def self.key
    'key'
  end

end

describe LolStatic::Endpoint do

  let(:id) { 1 }
  let(:realm) { double('realm', api_version: '4.4.3', base_uri: 'http://ddragon.leagueoflegends.com/cdn') }

  let(:endpoint) { ConcreteEndpoint.new(id, realm) }

  describe '#api_version' do
    it 'returns api version' do
      expect(endpoint.api_version).to eq('4.4.3')
    end
  end

  describe '#image_url' do
    it 'returns image url' do
      expect(endpoint.image_url).to eq("http://ddragon.leagueoflegends.com/cdn/4.4.3/img/key/#{id}.png")
    end
  end
end