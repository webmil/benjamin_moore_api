require_relative '../lib/benjamin_moore_api'

bm_client = BenjaminMooreApi::Client.new('9da13697984447f60de3')
families = bm_client.get_families
palettes = bm_client.get_palettes
p palettes
p '----------------------------'
p families
