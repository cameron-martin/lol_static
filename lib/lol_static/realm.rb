require 'httparty'

module LolStatic
  class Realm

    def base_uri
      realm_data['cdn']
    end

    def api_version(name=nil)
      realm_data['n'].has_key?(name.to_s) ? realm_data['n'][name.to_s] : realm_data['v']
    end

  private

    def realm_data
      @realm_data ||= HTTParty.get('http://ddragon.leagueoflegends.com/realms/euw.json').parsed_response
    end

  end
end