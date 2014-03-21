require 'lol_static'
require 'lol_static/endpoint'

module LolStatic
  class Item < Endpoint

    def self.api_version
      LolStatic.api_version('item')
    end

    def image_url
      "#{LolStatic.base_uri}/#{api_version}/img/item/#{@id}.png"
    end

  end
end