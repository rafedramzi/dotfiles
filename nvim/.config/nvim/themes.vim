set t_Co=256   " This is may or may not needed.

" SOURCE: https://jeffkreeftmeijer.com/vim-number/
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" SOURCE END

set background=dark
" colorscheme PaperColor
" colorscheme dracula
colorscheme jellybeans
