module BenjaminMooreApi
  module ProductMethods
    def get_families
      request(
        http_method: :get,
        endpoint: "api/#{api_key}/product/GetFamilies"
      )
    end
  end
end
