require 'httparty'

module LolStatic
  class Realm

    def initialize
      @mutex = Mutex.new
    end

    def base_uri
      realm_data['cdn']
    end

    def api_version(name=nil)
      realm_data['n'].has_key?(name.to_s) ? realm_data['n'][name.to_s] : realm_data['v']
    end

  private

    def realm_data
      @mutex.synchronize do
        @realm_data ||= HTTParty.get('http://ddragon.leagueoflegends.com/realms/euw.json').parsed_response
      end
    end

  end
end