module Benjamin
  class Client
    module Products
      def families
        get("/product/GetFamilies")
      end
    end
  end
end
