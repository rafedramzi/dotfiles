" Settings
"set autochdir
"set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
let mapleader=" "

set autoread " Auto Refresh
set completeopt=menuone,noselect
set expandtab
set foldlevel=99
set foldmethod=syntax
set guifont="Cascadia Code 12"
set ignorecase
set incsearch
set list
set noerrorbells
set nofoldenable "Disable folding
set noswapfile
set number relativenumber
set shiftwidth=2
set signcolumn=yes
set smartcase
set smartcase
set smartindent
set softtabstop=2
set tabstop=2
set timeoutlen=1000 ttimeoutlen=0
set undodir=~/.vim/undodir
set undofile

if &compatible
  set nocompatible " Be iMproved
endif

" Required:
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim/


" FROM :help restore-cursor
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif


call dein#begin('~/.cache/dein')
if has('nvim') || has('termguicolors')
  set termguicolors
endif

if has('nvim')
  call dein#add('mhinz/vim-startify')
  " call dein#add('rmagatti/auto-session')
  " Tree Sitter is a dependency in neovim package in archlinux
  "call dein#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})  " We recommend updating the parsers on update
  call dein#add('nvim-treesitter/nvim-treesitter')

  " Fuzzy Finder
  call dein#add('nvim-lua/popup.nvim')
  call dein#add('nvim-lua/plenary.nvim')
  call dein#add('nvim-telescope/telescope.nvim')

  " LSP
  call dein#add('neovim/nvim-lspconfig')
  " Auto Complete
  call dein#add('hrsh7th/nvim-compe')

  " Airline
  call dein#add('glepnir/galaxyline.nvim')
  call dein#add('ryanoasis/vim-devicons')
  " More at https://github.com/glepnir/galaxyline.nvim/issues/12
  luafile ~/.config/nvim/galaxyline.lua


  " Tree Sitter Platground
  " call dein#add('nvim-treesitter/playground')
 "
  
 " " File Tree
 " call dein#add('kyazdani42/nvim-web-devicons')
 " call dein#add('kyazdani42/nvim-tree.lua')
 " nmap <leader>ne :NvimTreeToggle<cr>
 " nmap <leader>nr :NvimTreeFindFile<cr>
 " nmap <F3> :NvimTreeToggle<cr>

  " Debugging
  "call dein#add('nvim-telescope/telescope-dap.nvim')
  "call dein#add('mfussenegger/nvim-dap')
endif

call dein#add('editorconfig/editorconfig-vim')

call dein#add('preservim/nerdtree')

"SHORTCUTS
nmap <leader>ne :NERDTreeTabsToggle<cr>
nmap <leader>nr :NERDTreeFind<cr>
nmap <F3> :NERDTreeToggle<cr>

" Theme
"call dein#add('NLKNguyen/papercolor-theme')
"call dein#add('rakr/vim-one')
"call dein#add('bluz71/vim-nightfly-guicolors')
call dein#add('challenger-deep-theme/vim')
call dein#add('rigellute/rigel')
colorscheme challenger_deep

" call dein#add('liuchengxu/vista.vim')

" TODO: This indent-blankline is really cool! if you have the time to rice
" your nvim, definiitely take alook at this plugin
call dein#add('lukas-reineke/indent-blankline.nvim')
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_show_trailing_blankline_indent = v:false

"Plug 'roxma/nvim-completion-manager'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"
call dein#end()

filetype plugin indent on
syntax enable


" Tree Sitter COnfig
lua <<EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {}, -- List of parsers to ignore installing
    highlight = {
      enable = true,              -- false will disable the whole extension
      disable = {},  -- list of language that will be disabled
    },
    indent = {
      enable = true
    }
  }
EOF

" LSP Cconfig
" Check https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#gopls
" for full configuration
lua <<EOF
-- Standard nvim-lsp config
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

nvim_lsp["gopls"].setup {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  }
}

-- MY custom Config
vim.cmd[[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()]]

EOF

lua << EOF
-- auto-session
-- require('auto-session').setup {
--     auto_session_enable_last_session=true,
--     auto_save_enabled=true,
--     auto_restore_enabled=true,
-- }
EOF

" Autocomplete
lua << EOF
-- Compe setup
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    nvim_lsp = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
EOF

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })



" Tree-sitter based folding. (Technically not a module because it's per windows and not per buffer.)
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


