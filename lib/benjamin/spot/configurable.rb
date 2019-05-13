module Benjamin
  module Spot
    module Configurable
      def self.keys
        [:api_key]
      end

      def options
        Hash[Benjamin::Spot::Configurable.keys.map{|key| [key, instance_variable_get(:"@#{key}")]}]
      end
    end
  end
end
