require('plugins.packer')
require('plugins.config.rafed')
-- require('plugins.autosession')
require('plugins.config.lsp')
require('plugins.config.cmp')
require('plugins.config.shortcuts')
require('plugins.config.tree-sitter')
require('plugins.config.dap-go')
require('plugins.config.telescope')

-- TODO: Lazy loading module nvchad l ike
require('gitsigns').setup()
require('telescope').load_extension('projects')

-- vim.g.colors_name = "challenger_deep"
-- 
-- vim.cmd("colorscheme challenger_deep")
