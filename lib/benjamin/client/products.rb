module Benjamin
  class Client
    module Products
      API_ENDPOINT = 'https://stage-api.benjaminmoore.com/api/'.freeze
      def families
        get("#{API_ENDPOINT}#{@api_key}/product/GetFamilies", { Authorization: "token #{@api_key}", Accept: 'application/json' })
      end
    end
  end
end
