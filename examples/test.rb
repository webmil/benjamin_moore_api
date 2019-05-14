require_relative 'lib/benjamin_moor_api'

client = BenjaminMoorApi.client(api_key: 'api-key')

p client.families
