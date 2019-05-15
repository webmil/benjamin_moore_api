require_relative '../lib/benjamin_moore_api'

client = BenjaminMooreApi.client(api_key: 'c654234ebc8261e72b46')

p client.families
