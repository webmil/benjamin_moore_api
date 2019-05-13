require_relative 'benjamin/spot/client'

module Benjamin
  module Spot
    def self.client(options)
      Benjamin::Spot::Client.new(options)
    end
  end
end
