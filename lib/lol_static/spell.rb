require 'lol_static'
require 'lol_static/endpoint'

module LolStatic
  class Spell < Endpoint

    def image_url
      "#{LolStatic.base_uri}/#{api_version}/img/spell/#{@id}.png"
    end

  end
end