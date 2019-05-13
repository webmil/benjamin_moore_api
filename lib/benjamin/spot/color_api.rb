module Benjamin
  module Spot
    module ColorApi
      API_ENDPOINT = 'https://stage-api.benjaminmoore.com/api/'.freeze
      def palletes
        get("#{API_ENDPOINT}#{@api_key}/color/GetPalettes", { Authorization: "token #{@api_key}", Accept: 'application/json' })
      end
    end
  end
end
