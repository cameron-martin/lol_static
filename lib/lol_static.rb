require 'lol_static/version'
require 'lol_static/item'
require 'lol_static/spell'


module LolStatic
  class << self
    def api_version(*args)
      realm.api_version(*args)
    end

    def base_uri
      realm.base_uri
    end

    def item(id)
      Item.new(id)
    end

    def spell(id)
      Spell.new(id)
    end

  private

    def realm
      @realm ||= Realm.new
    end

  end
end
