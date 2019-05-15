require_relative '../request'

module BenjaminMooreApi
  class Client
    module Products
      include BenjaminMooreApi::Request

      def products_from_number(product_list:, country_code: 'en-us')
        get('/product/GetProductsFromNumbers', productlist: product_list, countryCode: country_code)
      end

      def families_by_codes(codes:, country_code: 'en-us')
        get('/product/GetFamiliesByCodes', codes: codes, countryCode: country_code)
      end

      def product_detail(product_number:, country_code: 'en-us')
        get('/product/GetProductDetail', productNumber: product_number, countryCode: country_code)
      end

      def families(category: '', country_code: 'en-us')
        get('/product/GetFamilies', category: category, countryCode: country_code)
      end

      def family(code:, country_code: 'en-us')
        get('/product/GetFamily', code: code, countryCode: country_code)
      end
    end
  end
end
