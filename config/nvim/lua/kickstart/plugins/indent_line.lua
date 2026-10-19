-- Add indentation guides even on blank lines
vim.pack.add { 'https://github.com/lukas-reineke/indent-blankline.nvim' }

vim.api.nvim_set_hl(0, 'IblScope', { link = 'Function' })
require('ibl').setup {}

