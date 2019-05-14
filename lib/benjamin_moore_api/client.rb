require_relative 'configurable'
require_relative 'client/colors'
require_relative 'client/products'

module BenjaminMooreApi
  class Client

    include BenjaminMooreApi::Configurable
    include BenjaminMooreApi::Client::Products
    include BenjaminMooreApi::Client::Colors

    def initialize(options={})
      BenjaminMooreApi::Configurable.keys.each do |key|
        value = options.key?(key) ? options[key] : instance_variable_get(:"@#{key}")
        instance_variable_set(:"@#{key}", value)
      end
    end
  end
end
