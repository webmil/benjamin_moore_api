require 'typhoeus'
require 'json'
require_relative 'http_status_codes'
require_relative 'api_exceptions'

module BenjaminMooreApi
  module Request
    include HttpStatusCodes
    include ApiExceptions

    API_ENDPOINT = 'https://stage-api.benjaminmoore.com/api/'.freeze

    def get(url, options = {})
      request(:get, url, options)
    end

    private

    def request(method, path, options = {})
      request = Typhoeus::Request.new(
        "#{API_ENDPOINT}#{@api_key}#{path}",
        method: method,
        params: options,
        timeout: 180,
        headers:  { Accept: 'application/json' }
      )

      request.on_complete do |response|
        if response.success?
          return JSON.parse(request.response.body)
        elsif response.timed_out?
          raise TimeOutError
        elsif response.code == 0
          raise NoResponseError
        else
          raise error_class(request.response.code)
        end
      end

      request.run
    end

    def response_successful?(response_code = nil)
      response_code == HTTP_OK_CODE
    end

    def error_class(response_code)
      case response_code
      when HTTP_BAD_REQUEST_CODE
        BadRequestError
      when HTTP_UNAUTHORIZED_CODE
        UnauthorizedError
      when HTTP_FORBIDDEN_CODE
        ForbiddenError
      when HTTP_NOT_FOUND_CODE
        NotFoundError
      when HTTP_UNPROCESSABLE_ENTITY_CODE
        UnprocessableEntityError
      else
        ApiError
      end
    end
  end
end
