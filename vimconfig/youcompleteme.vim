let g:ycm_enable_semantic_highlighting=1
let g:ycm_enable_inlay_hints=1
let g:syntastic_always_populate_loc_list=1
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_min_num_identifier_candidate_chars = 2
"let g:ycm_key_invoke_completion = '<c-space>'
" let g:ycm_clear_inlay_hints_in_insert_mode=1

" dont pop preview
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0

" dont show diagnostics ui
let g:ycm_show_diagnostics_ui=0

" show confirm information of conf.py
let g:ycm_confirm_extra_conf=0

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
let g:ycm_filetype_whitelist = { 
			\ "c":1,
			\ "cpp":1, 
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }


nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
