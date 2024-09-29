local F = require 'f'

local k = {
  ['<leader><c-g>'] = { name = 'curline', },
  ['<leader><c-g>n'] = { function() F.norm_font_size() end, 'norm_font_size', mode = { 'n', 'v', }, silent = true, },
  ['<leader><c-g>i'] = { function() F.inc_font_size() end, 'inc_font_size', mode = { 'n', 'v', }, silent = true, },
  ['<leader><c-g>d'] = { function() F.dec_font_size() end, 'dec_font_size', mode = { 'n', 'v', }, silent = true, },
}

require 'which-key'.register(k)
F.map_buffer_until(k)
