local F = require 'f'

if not KK then
  KK = {}
end

local k = 'LeaderCGKeys1'

KK[k] = {
  ['<leader><c-g>'] = { name = 'curline', },
  ['<leader><c-g>n'] = { function() F.w(F.norm_font_size, k) end, 'norm_font_size', mode = { 'n', 'v', }, silent = true, },
  ['<leader><c-g>j'] = { function() F.w(F.dec_font_size, k) end, 'dec_font_size', mode = { 'n', 'v', }, silent = true, },
  ['<leader><c-g>k'] = { function() F.w(F.inc_font_size, k) end, 'inc_font_size', mode = { 'n', 'v', }, silent = true, },
}

require 'which-key'.register(KK[k])
