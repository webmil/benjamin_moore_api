# require 'typhoeus'
require 'faraday'
# require 'oj'
require 'json'
require 'byebug'
require_relative 'product_methods'
require_relative 'color_methods'

module BenjaminMooreApi
  class Client
    include ProductMethods
    include ColorMethods

    API_ENDPOINT = 'https://api.benjaminmoore.com/'.freeze

    attr_reader :api_key

    def initialize(api_key = nil)
      @api_key = api_key
    end

    private

    def client
      @_client ||= Faraday.new(API_ENDPOINT) do |client|
        client.request :url_encoded
        client.adapter Faraday.default_adapter
      end
    end

    def request(http_method:, endpoint:, params: {})
      response = client.public_send(http_method, endpoint, params)
      # parsed_response = Oj.load(response.body)
      # byebug
      if response_successful?(response)
        JSON.parse(response.body)
      else
        {
          code: response.status,
          response: response.body
        }
      end
    end

    def response_successful?(response)
      response.status == 200
    end

  end
end
