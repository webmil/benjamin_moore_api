require_relative '../request'

module BenjaminMooreApi
  class Client
    module Colors
      include BenjaminMooreApi::Request

      def palletes
        get("/color/GetPalettes")
      end
    end
  end
end
