" Aliases
cnoreabbrev bd BD
cnoreabbrev W w


"map <F1> <Esc>
"imap <F1> <Esc>

" nnoremap tk :tabnext<CR>
" nnoremap tj :tabprev<CR>
" nnoremap th :tabfirst<CR>
" nnoremap tl :tablast<CR>


" Tab navigation like Firefox.
nnoremap <C-S-b> :bprevious<CR>
nnoremap <C-b>   :bnext<CR>
nnoremap <C-t>     :bnew<CR>
inoremap <C-S-b> <Esc>:bprevious<CR>i
inoremap <C-b>   <Esc>:bnext<CR>i
inoremap <C-t>     <Esc>:bnew<CR>


" FUZZY FINDER
nnoremap <silent> <C-p> :FZF --reverse --info=inline<CR>

