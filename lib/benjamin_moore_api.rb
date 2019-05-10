require 'faraday'
require 'json'
require 'byebug'
require "benjamin_moore_api/version"
require_relative "benjamin_moore_api/product_methods"
require_relative "benjamin_moore_api/color_methods"

module BenjaminMooreApi
  class Client
    include BenjaminMooreApi::ProductMethods
    include BenjaminMooreApi::ColorMethods

    API_ENDPOINT = 'https://api.benjaminmoore.com/'.freeze

    attr_reader :api_key

    def initialize(api_key = nil)
      @api_key = api_key
    end

    private

    def request(http_method:, endpoint:, params: {})
      response = client.public_send(http_method, endpoint, params)
      if response_successful?(response)
        JSON.parse(response.body)
      else
        {
          code: response.status,
          response: response.body
        }
      end
    end

    def client
      @_client ||= Faraday.new(API_ENDPOINT) do |client|
        client.request :url_encoded
        client.adapter Faraday.default_adapter
      end
    end

    def response_successful?(response)
      response.status == 200
    end

  end
end
