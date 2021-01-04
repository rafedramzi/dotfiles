
call plug#begin('~/.vim/plugged')
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#enable_at_startup = 1
    
    Plug 'Shougo/echodoc.vim'
    set cmdheight=2
    let g:echodoc#enable_at_startup = 1
    let g:echodoc#type = 'signature'
    
    " ====================================
    
    
    Plug 'rust-lang/rust.vim'
    Plug 'fatih/vim-go'
    Plug 'udalov/kotlin-vim'
    "{{{ LSP
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }
    Plug 'liuchengxu/vista.vim'

    "{{{ NAVIGATION
    Plug 'scrooloose/nerdtree'
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'jistr/vim-nerdtree-tabs'
    
    "Plug 'junegunn/fzf.vim'
    Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
    
    Plug 'qpkorr/vim-bufkill'
    Plug 'jremmen/vim-ripgrep'
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
      Plug 'equalsraf/neovim-gui-shim'
      Plug 'tpope/vim-fugitive'
      Plug 'airblade/vim-gitgutter'
      "Plug 'scrooloose/syntastic' " Cause slow
      Plug 'godlygeek/tabular'
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
      Plug 'mg979/vim-visual-multi'
      "Plug 'terryma/vim-multiple-cursors' "Plug 'nathanaelkane/vim-indent-guides'
      Plug 'yggdroot/indentline'
      Plug 'pedrohdz/vim-yaml-folds'
      Plug 'konfekt/fastfold'
      "}}}
      "{{{ THEME
      Plug 'arzg/vim-colors-xcode'
      Plug 'NLKNguyen/papercolor-theme'
      Plug 'nanotech/jellybeans.vim'
      Plug 'tomasr/molokai'
      Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
      Plug 'cespare/vim-toml'
      Plug 'dracula/vim', { 'as': 'dracula' }
      Plug 'artanikin/vim-synthwave84'
      "}}}
      "{{{ SYNTAX
      Plug 'neomake/neomake'
      Plug 'plasticboy/vim-markdown'
      let g:vim_markdown_conceal = 0
      "}}}
      "
  endif
call plug#end()

