require 'lol_static/realm'
require 'lol_static/item'
require 'lol_static/spell'
require 'lol_static/champion'

module LolStatic
  class Client

    def initialize
      @realm = Realm.new
    end

    def item(id)
      Item.new(id, @realm)
    end

    def spell(id)
      Spell.new(id, @realm)
    end

    def champion(id)
      Champion.new(id, @realm)
    end

  end
end