require 'lol_static/realm'

module LolStatic
  module Config
    class << self

      def api_version(*args)
        realm.api_version(*args)
      end

      def base_uri
        realm.base_uri
      end

    private

      def realm
        @realm ||= Realm.new
      end

    end
  end
end