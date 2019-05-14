require_relative '../request'

module Benjamin
  class Client
    module Colors
      include Benjamin::Request

      def get_color_detail(number:)
        get("/color/GetColorDetail", {colorNumber: number})
      end

      def get_colors_from_numbers(list:, with_colors: false)
        get("/color/GetColorsFromNumbers", {colorList: list, getDetails: with_colors})
      end

      def get_palletes(with_colors: false)
        get("/color/GetPalettes", {colorData: with_colors})
      end

      def get_palletes_by_category(category:, with_colors: false)
        get("/color/GetPalettesByCategory", {category: category, colorData: with_colors})
      end

      def get_palletes_by_code(code:)
        get("/color/GetPaletteByCode", {code: code})
      end
    end
  end
end
