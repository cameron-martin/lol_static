require 'open-uri'

module LolStatic
  class Endpoint

    def initialize(id, realm)
      @id = id
      @realm = realm
    end

    def image_url
      "#{@realm.base_uri}/#{api_version}/img/#{self.class.key}/#{@id}.png"
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

    def api_version
      @realm.api_version(self.class.key)
    end

  end
end