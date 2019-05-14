module Benjamin
  module Configurable
    def self.keys
      [:api_key]
    end

    def options
      Hash[Benjamin::Configurable.keys.map{|key| [key, instance_variable_get(:"@#{key}")]}]
    end
  end
end
