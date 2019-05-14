require_relative 'benjamin_moore_api/client'

module BenjaminMooreApi
  def self.client(options)
    BenjaminMooreApi::Client.new(options)
  end
end
