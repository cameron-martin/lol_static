require 'lol_static/version'
require 'lol_static/item'
require 'lol_static/spell'
require 'lol_static/realm'
require 'lol_static/champion'


module LolStatic
  class << self

    def item(id)
      Item.new(id)
    end

    def spell(id)
      Spell.new(id)
    end

    def champion(id)
      Champion.new(id)
    end

  end
end
