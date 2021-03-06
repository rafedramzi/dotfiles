"set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
set autoread
set list
set timeoutlen=1000 ttimeoutlen=0
set guifont="Cascadia Code 12"
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set noerrorbells
set nofoldenable "Disable folding
set foldmethod=syntax
set foldlevel=99
":%foldc
"set foldnestmax=1
set noswapfile
set smartcase
set incsearch
set undodir=~/.vim/undodir
set undofile
" set undolevels=10000
set autoread " Auto Refresh
set signcolumn=yes
set completeopt=menu " To avoid annoying vertical split
"set autochdir
"
"
set ignorecase
set smartcase

if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Auto reload file when switchign buffer: https://vi.stackexchange.com/questions/444/how-do-i-reload-the-current-file
au FocusGained,BufEnter * :checktime

source ~/.config/nvim/plugin.vim
if has('nvim')
  source ~/.config/nvim/settings/deoplete.vim
  source ~/.config/nvim/settings/vista.vim
  source ~/.config/nvim/settings/LanguageClient.vim
  source ~/.config/nvim/settings/neomake.vim
  source ~/.config/nvim/settings/rust-vim.vim
  source ~/.config/nvim/settings/vim-go.vim
endif
source ~/.config/nvim/themes.vim
source ~/.config/nvim/settings/nerdtree.vim
source ~/.config/nvim/settings/fzf.vim
source ~/.config/nvim/settings/airline.vim
source ~/.config/nvim/settings/nerdcommenter.vim
source ~/.config/nvim/settings/others.vim
source ~/.config/nvim/my-keystrokes.vim

source ~/.config/nvim/functions/*



" enable json quoting from json-vim, TODO: NOT WORKING!
set conceallevel=0
let g:vim_json_syntax_conceal=0
