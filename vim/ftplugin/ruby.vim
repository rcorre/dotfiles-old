" ruby completion
let g:rubycomplete_buffer_loading = 1 
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
nnoremap <leader>r :w<cr>:!ruby %<cr>
set foldnestmax=1
set foldmethod=syntax

" closing end
inoremap <S-cr> <cr><cr>end<esc>kcc
