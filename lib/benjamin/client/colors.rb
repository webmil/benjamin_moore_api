module Benjamin
  class Client
    module Colors
      def palletes
        get("/color/GetPalettes")
      end
    end
  end
end
