require 'open-uri'

module LolStatic
  class Endpoint

    def self.api_version
      LolStatic.api_version
    end

    def initialize(id)
      @id = id
    end

    def api_version
      self.class.api_version
    end

    def download_to(path)
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