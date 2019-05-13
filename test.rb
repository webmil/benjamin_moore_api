require_relative 'lib/benjamin'

client = Benjamin::Spot.client(api_key: 'api_key')

p client.families
