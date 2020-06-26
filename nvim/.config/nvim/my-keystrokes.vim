" Aliases
cnoreabbrev bd BD
cnoreabbrev W w


"
map <F1> <Esc>
imap <F1> <Esc>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>


"{{{
" Copied from: https://github.com/jonhoo/configs/blob/master/editor/.config/nvim/init.vim 
" Toggle buffer
nnoremap <leader><leader> <c-^>
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" <leader>, shows/hides hidden characters
nnoremap <leader>, :set invlist<cr>

" Show actions available at this location
nnoremap <silent> <space>a  :CocAction<cr>
"}}}

" FUZZY FINDER
nnoremap <silent> <C-p> :FZF --reverse --info=inline<CR>

