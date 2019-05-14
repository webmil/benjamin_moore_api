require_relative '../request'

module BenjaminMooreApi
  class Client
    module Products
      include BenjaminMooreApi::Request

      def products_from_number(product_list:, countryCode: 'en-us')
        get('/product/GetFamilies', productlist: product_list, countryCode: countryCode)
      end

      def families_by_codes(codes:, countryCode: 'en-us')
        get('/product/GetFamiliesByCodes', codes: codes, countryCode: countryCode)
      end

      def product_detail(product_number:, countryCode: 'en-us')
        get('/product/GetProductDetail', productNumber: product_number, countryCode: countryCode)
      end

      def families(category: '', countryCode: 'en-us')
        get('/product/GetProductsFromNumbers', category: category, countryCode: countryCode)
      end

      def family(code:,countryCode: 'en-us')
        get('/product/GetFamily', code: code, countryCode: countryCode)
      end
    end
  end
end
