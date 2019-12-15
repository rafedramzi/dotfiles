call plug#begin('~/.vim/plugged')
"{{{ RUST
Plug 'rust-lang/rust.vim'
"}}}
"{{{ GOLANG
Plug 'fatih/vim-go'
"}}}
"{{{ LSP
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"}}}
"{{{ NAVIGATION
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
"}}}
"{{{ TYPINGS
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
"}}}
"{{{ Others
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
"}}}
"{{{ THEME
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
"}}}
"{{{ SYNTAX
Plug 'neomake/neomake'
Plug 'plasticboy/vim-markdown'
"}}}
call plug#end()

