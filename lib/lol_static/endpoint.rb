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
      File.open(path, 'wb') do |f|
        f.write(read)
      end
    rescue OpenURI::HTTPError
      false
    else
      true
    end

    def read
      open(image_url) do |image|
        image.read
      end
    end

  end
end