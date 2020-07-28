call plug#begin('~/.vim/plugged')
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/echodoc.vim'
set cmdheight=2
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

" ====================================


"{{{ RUST
Plug 'rust-lang/rust.vim'
"}}}
"{{{ GOLANG
Plug 'fatih/vim-go'
Plug 'udalov/kotlin-vim'
"}}}
"{{{ LSP
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"" Commented becase I use the aur package
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ } }}} {{{ NAVIGATION
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf.vim'
Plug 'qpkorr/vim-bufkill'
"Plug 'majutsushi/tagbar'
"Plug 'ctrlpvim/ctrlp.vim'
"}}}
"{{{ TYPINGS
"Plug 'maralla/completor.vim'
Plug 'tpope/vim-surround'
"Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
"}}}
"{{{ JULIA
Plug 'juliaeditorsupport/julia-vim'
"Plug 'julialang/julia-vim'
"}}}
"{{{ Others
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Plug 'scrooloose/syntastic' " Cause slow
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'mg979/vim-visual-multi'
Plug 'terryma/vim-multiple-cursors'
"Plug 'konfekt/fastfold'
"}}}
"{{{ THEME
Plug 'arzg/vim-colors-xcode'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'artanikin/vim-synthwave84'
"}}}
"{{{ SYNTAX
Plug 'neomake/neomake'
Plug 'plasticboy/vim-markdown'
"}}}
call plug#end()

