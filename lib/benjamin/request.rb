require 'typhoeus'

module Benjamin
  module Request
    def get(url, options = {})
      request(:get, url, options)
    end

    private

    def request(method, path, options = {})
      request = Typhoeus::Request.new(
        path,
        method: method,
        headers: options
      )
      request.run
      request.response.body
    end
  end
end
