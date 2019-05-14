require_relative 'lib/benjamin_moor_api'

client = BenjaminMoorApi.client(api_key: 'c654234ebc8261e72b46')

p client.families
