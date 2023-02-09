let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

lua << EOF
require('conf_cmp')
-- require('conf_lualine')
require('conf_main')
require('conf_nvim_tree')
require('conf_telescope')
require('conf_treesitter')
require('keymaps')
require('plugins')
EOF
