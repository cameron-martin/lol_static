require 'open-uri'
require 'lol_static/config'

module LolStatic
  class Endpoint

    def self.api_version
      LolStatic::Config.api_version(key)
    end

    def initialize(id)
      @id = id
    end

    def image_url
      "#{LolStatic::Config.base_uri}/#{self.class.api_version}/img/#{self.class.key}/#{@id}.png"
    end

    def download(path)
      open(image_url) do |image|
        File.open(path, 'wb') do |f|
          f.write(image.read)
        end
      end
    rescue OpenURI::HTTPError
      false
    else
      true
    end

  end
end