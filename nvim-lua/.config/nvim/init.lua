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
-- TODO: move mve to config file, 
require('feline').setup()
require('keymap')


-- vim.g.colors_name = "challenger_deep"
-- 
vim.cmd([[colorscheme nightfox]])
vim.cmd([[set guifont=Fira\ Code:h12]])
-- For auto reload file to buffer
vim.cmd([[set autoread | au CursorHold * checktime | call feedkeys("lh")]])


-- TODO: create your own when you have the time
-- originally from: https://github.com/golang/tools/blob/6e9046bfcd34178dc116189817430a2ad1ee7b43/gopls/doc/vim.md#imports
-- there's a lot of config from goalng/tools pagea, check it if you ahve the time
-- https://neovim.io/doc/user/lsp.html
--
function OrgImports(wait_ms)
  local params = vim.lsp.util.make_range_params()
  params.context = {only = {"source.organizeImports"}}
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  for _, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        -- local client = vim.lsp.get_client_by_id(ctx.client_id)
        -- vim.lsp.util.apply_workspace_edit(r.edit, client.offset_encoding)
        vim.lsp.util.apply_workspace_edit(r.edit, "UTF-16")
      else
        vim.lsp.buf.execute_command(r.command)
      end
    end
  end
end



vim.cmd([[
  augroup GO_LSP
    " autocmd!
    " autocmd BufWritePre *.go :silent! lua vim.lsp.buf.formatting()
    autocmd BufWritePre *.go lua OrgImports(1000)
  augroup END
  autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc
  " To make background transparent
  "highlight Normal ctermbg=none guibg=none
]])


-- Neovide settings
vim.cmd([[
  let g:neovide_cursor_antialiasing=v:true
  let g:neovide_cursor_animation_length=0
  let g:neovide_transparency=0.95

  "Ctrl+v system clipboard
  let &showbreak='↳ '
  set cpoptions-=n

]])

