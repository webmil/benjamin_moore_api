require_relative '../lib/benjamin_moore_api'

client = BenjaminMooreApi.client(api_key: 'api_key', api_endpoint: 'https://api.benjaminmoore.com/api/')

p client.palettes(with_colors: true)
