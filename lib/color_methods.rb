module BenjaminMooreApi
  module ColorMethods
    def get_palettes
      request(
        http_method: :get,
        endpoint: "api/#{api_key}/color/GetPalettes"
      )
    end
  end
end
