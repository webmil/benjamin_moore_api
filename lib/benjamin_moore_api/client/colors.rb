require_relative '../request'

module BenjaminMooreApi
  class Client
    module Colors
      include BenjaminMooreApi::Request

      def color_detail(color_number:, country_code: 'en-us')
        get('/color/GetColorDetail', {colorNumber: color_number, countryCode: country_code})
      end

      def colors_from_numbers(list:, with_colors: false, country_code: 'en-us')
        get('/color/GetColorsFromNumbers', { colorList: list, getDetails: with_colors, countryCode: country_code })
      end

      def palletes(with_colors: false, country_code: 'en-us')
        get('/color/GetPalettes', { colorData: with_colors, countryCode: country_code })
      end

      def palletes_by_category(category:, with_colors: false, country_code: 'en-us')
        get('/color/GetPalettesByCategory', { category: category, colorData: with_colors, countryCode: country_code })
      end

      def palletes_by_code(code:, country_code: 'en-us')
        get('/color/GetPaletteByCode', { code: code, countryCode: country_code })
      end
    end
  end
end
