call plug#begin('~/.vim/plugged')
"{{{ RUST
Plug 'rust-lang/rust.vim'
"Plug 'racer-rust/vim-racer'
"}}}
"{{{ GOLANG
Plug 'fatih/vim-go'
Plug 'udalov/kotlin-vim'
"}}}
"{{{ LSP
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"}}}
"{{{ NAVIGATION
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
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
"}}}
"{{{ JULIA
Plug 'juliaeditorsupport/julia-vim'
"Plug 'julialang/julia-vim'
"}}}
"{{{ Others
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
"}}}
"{{{ THEME
Plug 'arzg/vim-colors-xcode'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nanotech/jellybeans.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'tomasr/molokai'
"}}}
"{{{ SYNTAX
Plug 'neomake/neomake'
Plug 'plasticboy/vim-markdown'
"}}}
call plug#end()

