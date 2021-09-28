local cmd = vim.cmd
cmd[[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()]]

-- Vim Command
cmd([[
  " Settings
  "set autochdir
  "set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
  let mapleader=" "
  set autoread " Auto Refresh set completeopt=menuone,noselect
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

  " FROM :help restore-cursor
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif


  " TODO: move to nvim
  if has('nvim') || has('termguicolors')
    set termguicolors
  endif


  " Tree-sitter based folding. (Technically not a module because it's per windows and not per buffer.)
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
]])

-- Sortcuts
vim.api.nvim_set_keymap('n', '<leader>ne', ':NERDTreeTabsToggle<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nr', ':NERDTreeFind<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeToggle<cr>', { noremap = true, silent = true })


-- colorscheme challenger_deep
vim.g.colors_name = "challenger_deep"
vim.opt.list = true
vim.opt.listchars = {
    space = "⋅",
    eol = "↴",
}

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    indent_blankline_use_treesitter = true,
    indent_blankline_show_trailing_blankline_indent = false,
}

-- TODO: evaluat this this vim options
-- filetype plugin indent on
-- syntax enable
--

