" YouCompleteMe Settings

" show confirmation message for loading config file
let g:ycm_confirm_extra_conf = 1

" don't keep preview window open
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" include language syntax elements in identifier completions
let g:ycm_seed_identifiers_with_syntax = 1

" complete strings in comment text
let g:ycm_complete_in_comments = 1

" complete filenames relative to vim's pwd
let g:ycm_filepath_completion_use_working_dir = 1

" don't show diagnostics
let g:ycm_enable_diagnostic_signs = 0

let g:ycm_global_ycm_extra_conf = '~/dotfiles/vim/ycm_global_conf.py'

" trigger scoped import completions in D (import std.algorithm : |)
let g:ycm_semantic_triggers = { 'd' : [': '] }
