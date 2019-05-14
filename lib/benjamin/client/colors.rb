require_relative '../request'

module Benjamin
  class Client
    module Colors
      include Benjamin::Request

      def palletes
        get("/color/GetPalettes")
      end
    end
  end
end
