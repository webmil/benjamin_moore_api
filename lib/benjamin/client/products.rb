module Benjamin
  class Client
    module Products
      def families
        get("/product/GetFamilies", { Accept: 'application/json' })
      end
    end
  end
end
