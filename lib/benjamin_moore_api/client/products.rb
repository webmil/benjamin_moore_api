require_relative '../request'

module BenjaminMooreApi
  class Client
    module Products
      include BenjaminMooreApi::Request

      def families(category: '', countryCode: 'en-us')
        get("/product/GetFamilies", category: category, countryCode: countryCode)
      end

    end
  end
end
