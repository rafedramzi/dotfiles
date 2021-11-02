
-- # Auto Completion
-- ## Compe

-- vim.api.nvim_set_keymap('i', "<C-Space>", [[compe#complete()]], { noremap = true, silent = true, expr = true})
-- vim.api.nvim_set_keymap('i', "<CR>",      [[compe#confirm('<CR>')]], { noremap = true, silent = true, expr = true})
-- vim.api.nvim_set_keymap('i', "<C-e>",     [[compe#close('<C-e>')]], { noremap = true, silent = true, expr = true})
-- vim.api.nvim_set_keymap('i', "<C-f>",     [[compe#scroll({ 'delta': +4 }]], { noremap = true, silent = true, expr = true})
-- vim.api.nvim_set_keymap('i', "<C-d>",     [[compe#scroll({ 'delta': -4 }]], { noremap = true, silent = true, expr = true})

-- local t = function(str)
--   return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end
-- 
-- local check_back_space = function()
--     local col = vim.fn.col('.') - 1
--     return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
-- end
-- 
-- -- Use (s-)tab to:
-- --- move to prev/next item in completion menuone
-- --- jump to prev/next snippet's placeholder
-- _G.tab_complete = function()
--   if vim.fn.pumvisible() == 1 then
--     return t "<C-n>"
--   elseif vim.fn['vsnip#available'](1) == 1 then
--     return t "<Plug>(vsnip-expand-or-jump)"
--   elseif check_back_space() then
--     return t "<Tab>"
--   else
--     return vim.fn['compe#complete']()
--   end
-- end
-- _G.s_tab_complete = function()
--   if vim.fn.pumvisible() == 1 then
--     return t "<C-p>"
--   elseif vim.fn['vsnip#jumpable'](-1) == 1 then
--     return t "<Plug>(vsnip-jump-prev)"
--   else
--     -- If <S-Tab> is not working in your terminal, change it to <C-h>
--     return t "<S-Tab>"
--   end
-- end
-- 
-- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- # Fuzzy Finder
-- ## Telescope
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tegf',  [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true })


-- # NERDTree
vim.api.nvim_set_keymap('n', '<leader>ne', ':NERDTreeTabsToggle<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nr', ':NERDTreeFind<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeToggle<cr>', { noremap = true, silent = true })


-- # DAP
vim.api.nvim_set_keymap('n', '<F5>',  [[:lua require'dap'.continue()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', [[:lua require'dap'.step_over()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F11>', [[:lua require'dap'.step_into()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', [[:lua require'dap'.step_out()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b',  [[:lua require'dap'.toggle_breakpoint()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>B',  [[:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lp', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', [[:lua require'dap'.repl.open()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dl', [[:lua require'dap'.run_last()<CR>]], { noremap = true, silent = true })

