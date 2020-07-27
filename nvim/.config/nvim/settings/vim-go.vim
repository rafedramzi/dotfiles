" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_metalinter_enabled = ['vet', 'golint']
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
" let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave = 0
let g:go_jump_to_error = 0

