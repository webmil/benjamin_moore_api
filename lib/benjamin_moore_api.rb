require_relative 'benjamin_moore_api/client'
require_relative "benjamin_moore_api/version"

module BenjaminMooreApi
  def self.client(options)
    BenjaminMooreApi::Client.new(options)
  end
end
