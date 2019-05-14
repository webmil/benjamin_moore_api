module BenjaminMooreApi
  module Configurable
    def self.keys
      [:api_key]
    end

    def options
      Hash[BenjaminMooreApi::Configurable.keys.map{|key| [key, instance_variable_get(:"@#{key}")]}]
    end
  end
end
