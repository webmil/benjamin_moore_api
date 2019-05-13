require_relative '../request'
require_relative 'configurable'
require_relative 'color_api'
require_relative 'product_api'

module Benjamin
  module Spot
    class Client
      include Benjamin::Request
      include Benjamin::Spot::Configurable
      include Benjamin::Spot::ProductApi
      include Benjamin::Spot::ColorApi

      def initialize(options={})
        Benjamin::Spot::Configurable.keys.each do |key|
          value = options.key?(key) ? options[key] : Benjamin::Spot.instance_variable_get(:"@#{key}")
          instance_variable_set(:"@#{key}", value)
        end
      end

    end
  end
end
