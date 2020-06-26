"set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
set list
set timeoutlen=1000 ttimeoutlen=0
set guifont="Cascadia Code 12"
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set noerrorbells
set termguicolors
set nofoldenable "Disable folding
set foldmethod=syntax
set noswapfile
set smartcase
set incsearch
set undodir=~/.vim/undodir
set undofile
" Coc vim debug
" let g:node_client_debug = 1
filetype plugin on

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/themes.vim
source ~/.config/nvim/settings_coc-nvim.vim
source ~/.config/nvim/settings_vim-go.vim
source ~/.config/nvim/settings_nerdtree.vim
source ~/.config/nvim/settings_neomake.vim
source ~/.config/nvim/my-keystrokes.vim
source ~/.config/nvim/settings_rust-vim.vim
source ~/.config/nvim/settings_fzf.vim
source ~/.config/nvim/settings_vista.vim
source ~/.config/nvim/settings_airline.vim
source ~/.config/nvim/settings-nerdcommenter.vim

"source ~/.config/nvim/settings_vim-racer.vim
"source ~/.config/nvim/settings_tagbar.vim


source ~/.config/nvim/functions/*

