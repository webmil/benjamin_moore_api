module Benjamin
  class Client
    module Colors
      def palletes
        get("/color/GetPalettes", { Accept: 'application/json' })
      end
    end
  end
end
