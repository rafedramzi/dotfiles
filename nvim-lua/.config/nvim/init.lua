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
vim.cmd("colorscheme PaperColor")
vim.cmd([[set guifont=JetBrains\ Mono:12]])
-- For auto reload file to buffer
vim.cmd([[set autoread | au CursorHold * checktime | call feedkeys("lh")]])


-- TODO: create your ownw hen you have the time
-- originally from: https://github.com/golang/tools/blob/6e9046bfcd34178dc116189817430a2ad1ee7b43/gopls/doc/vim.md#imports
-- there's a lot of config from goalng/tools pagea, check it if you ahve the time
-- https://neovim.io/doc/user/lsp.html 
--
function goimports(timeout_ms)
  local context = { only = { "source.organizeImports" } }
  vim.validate { context = { context, "t", true } }

  local params = vim.lsp.util.make_range_params()
  params.context = context

  -- See the implementation of the textDocument/codeAction callback
  -- (lua/vim/lsp/handler.lua) for how to do this properly.
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
  if not result or next(result) == nil then return end
  local actions = result[1].result
  if not actions then return end
  local action = actions[1]

  -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
  -- is a CodeAction, it can have either an edit, a command or both. Edits
  -- should be executed first.
  if action.edit or type(action.command) == "table" then
    if action.edit then
      vim.lsp.util.apply_workspace_edit(action.edit)
    end
    if type(action.command) == "table" then
      vim.lsp.buf.execute_command(action.command)
    end
  else
    vim.lsp.buf.execute_command(action)
  end
end



vim.cmd([[
  augroup GO_LSP
    autocmd!
    " autocmd BufWritePre *.go :silent! lua vim.lsp.buf.formatting()
    autocmd BufWritePre *.go lua goimports(1000)
  augroup END
  autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc
]])


-- Neovide settings
vim.cmd([[
  let g:neovide_cursor_antialiasing=v:true
  let g:neovide_cursor_animation_length=0
]])
