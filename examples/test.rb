require_relative '../lib/benjamin_moore_api'

client = BenjaminMooreApi.client(api_key: 'api_key')

p client.families
