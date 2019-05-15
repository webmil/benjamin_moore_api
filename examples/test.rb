require_relative '../lib/benjamin_moore_api'

client = BenjaminMooreApi.client(api_key: 'api-key')

p client.families
