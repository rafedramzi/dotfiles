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
set autoread " Auto Refresh

" Coc vim debug
" let g:node_client_debug = 1
filetype plugin on

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/themes.vim
source ~/.config/nvim/settings/coc-nvim.vim
source ~/.config/nvim/settings/vim-go.vim
source ~/.config/nvim/settings/nerdtree.vim
source ~/.config/nvim/settings/neomake.vim
source ~/.config/nvim/my-keystrokes.vim
source ~/.config/nvim/settings/rust-vim.vim
source ~/.config/nvim/settings/fzf.vim
source ~/.config/nvim/settings/vista.vim
source ~/.config/nvim/settings/airline.vim
source ~/.config/nvim/settings/nerdcommenter.vim

"source ~/.config/nvim/settings/vim-racer.vim
"source ~/.config/nvim/settings/tagbar.vim


source ~/.config/nvim/functions/*

