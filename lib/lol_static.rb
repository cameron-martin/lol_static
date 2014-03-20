require 'lol_static/version'
require 'lol_static/item'


module LolStatic
  class << self
    def api_version(name)
      realm.api_version(name)
    end

    def base_uri
      realm.base_uri
    end

    def item(id)
      Item.new(id)
    end

  private

    def realm
      @realm ||= Realm.new
    end

  end
end
