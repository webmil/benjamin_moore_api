require 'typhoeus'
require_relative 'http_status_codes'
require_relative 'api_exceptions'

module Benjamin
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
        "#{API_ENDPOINT}#{@api_key}" + path,
        method: method,
        headers: options
      )
      request.run

      return request.response.body if response_successful?(request.response.code)

      raise error_class(request.response.code)
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