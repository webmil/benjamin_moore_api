require_relative 'lib/benjamin_moor_api'

client = BenjaminMoorApi.client(api_key: 'api_key')

p client.families
