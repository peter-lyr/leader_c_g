local F = require 'f'

local lua = F.getlua(debug.getinfo(1)['source'])

local k = lua .. 1

KK[k] = {
  ['<leader><c-g>'] = { name = 'curline', },
  ['<leader><c-g>n'] = { function() F.k_k(F.norm_font_size, k) end, 'norm_font_size', mode = { 'n', 'v', }, silent = true, },
  ['<leader><c-g>j'] = { function() F.k_k(F.dec_font_size, k) end, 'dec_font_size', mode = { 'n', 'v', }, silent = true, },
  ['<leader><c-g>k'] = { function() F.k_k(F.inc_font_size, k) end, 'inc_font_size', mode = { 'n', 'v', }, silent = true, },
}

require 'which-key'.register(KK[k])
