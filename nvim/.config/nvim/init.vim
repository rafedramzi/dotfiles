set list
"set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
set timeoutlen=1000 ttimeoutlen=0
set guifont="Cascadia Code 12"
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set nofoldenable "Disable folding

call plug#begin()
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
"source ~/.config/nvim/settings_vim-racer.vim
"source ~/.config/nvim/settings_tagbar.vim
call plug#end()


source ~/.config/nvim/functions/*

