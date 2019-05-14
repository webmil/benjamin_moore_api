require_relative '../request'

module BenjaminMooreApi
  class Client
    module Products
      include BenjaminMooreApi::Request

      def families
        get("/product/GetFamilies")
      end
    end
  end
end
