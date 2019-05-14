require_relative '../request'

module BenjaminMooreApi
  class Client
    module Colors
      include BenjaminMooreApi::Request

      def color_detail(number:)
        get("/color/GetColorDetail", {colorNumber: number})
      end

      def colors_from_numbers(list:, with_colors: false)
        get("/color/GetColorsFromNumbers", { colorList: list, getDetails: with_colors })
      end

      def palletes(with_colors: false)
        get("/color/GetPalettes", { colorData: with_colors })
      end

      def palletes_by_category(category:, with_colors: false)
        get("/color/GetPalettesByCategory", { category: category, colorData: with_colors })
      end

      def palletes_by_code(code:)
        get("/color/GetPaletteByCode", { code: code })
      end

    end
  end
end
