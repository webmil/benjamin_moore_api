require_relative '../request'

module Benjamin
  class Client
    module Products
      include Benjamin::Request

      def families
        get("/product/GetFamilies")
      end
    end
  end
end
