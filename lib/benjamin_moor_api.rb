require_relative 'benjamin/client'

module BenjaminMoorApi
  def self.client(options)
    Benjamin::Client.new(options)
  end
end
