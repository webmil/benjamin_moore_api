module BenjaminMooreApi
  module Configurable
    def self.keys
      [:api_key, :api_endpoint]
    end

    def options
      Hash[BenjaminMooreApi::Configurable.keys.map{|key| [key, instance_variable_get(:"@#{key}")]}]
    end
  end
end
