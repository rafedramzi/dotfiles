function! myconfig#after() abort
  " set list
  " set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
  set timeoutlen=1000 ttimeoutlen=0
  set guifont="Cascadia Code 12"
  inoremap <silent><expr> <c-space> coc#refresh()
  
  call coc#config('coc.preferences', {
  			\ "autoTrigger": "always",
  			\ "maxCompleteItemCount": 10,
  			\ "codeLens.enable": 1,
  			\ "diagnostic.virtualText": 1,
  			\})
  
  let s:coc_extensions = [
  			\ 'coc-dictionary',
  			\ 'coc-json',
  			\ 'coc-ultisnips',
  			\ 'coc-tag',
  			\]
  
  for extension in s:coc_extensions
  	call coc#add_extension(extension)
  endfor
endfunction

let runner2 = {
    \ 'exe' : 'clang++',
    \ 'targetopt' : '-o',
    \ 'opt' : ['-std=c++1z', '-xc++', '-'],
    \ 'usestdin' : 1,
    \ }
call SpaceVim#plugins#runner#reg_runner('cpp', [runner2, '#TEMP#'])
