require 'lol_static/version'
require 'lol_static/item'

require 'httparty'

module LolStatic
  class << self
    def api_version(name)
      realm_data['n'][name.to_s]
    end

    def base_uri
      realm_data['cdn']
    end

    def item(id)
      Item.new(id)
    end

  private

    def realm_data
      @realm_data ||= HTTParty.get('http://ddragon.leagueoflegends.com/realms/euw.json').parsed_response
    end
  end
end
