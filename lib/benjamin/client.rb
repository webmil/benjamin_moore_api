require_relative 'configurable'
require_relative 'client/colors'
require_relative 'client/products'

module Benjamin
  class Client

    include Benjamin::Configurable
    include Benjamin::Client::Products
    include Benjamin::Client::Colors

    def initialize(options={})
      Benjamin::Configurable.keys.each do |key|
        value = options.key?(key) ? options[key] : instance_variable_get(:"@#{key}")
        instance_variable_set(:"@#{key}", value)
      end
    end
  end
end
