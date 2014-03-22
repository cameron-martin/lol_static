module LolStatic
  Config = Object.new.tap do |object|
    class << object

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