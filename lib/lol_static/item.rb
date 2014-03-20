require 'lol_static'

module LolStatic
  class Item

    def self.api_version
      LolStatic.api_version('item')
    end

    def initialize(item_id)
      @item_id = item_id
    end

    def api_version
      self.class.api_version
    end

    def image_url
      "#{LolStatic.base_uri}/#{api_version}/img/item/#{@item_id}.png"
    end

  end
end