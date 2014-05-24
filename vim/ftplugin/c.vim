nmap <leader>t :TagbarToggle<cr>
nmap <leader>m :w<cr>:!colormake<cr>
nmap <leader>x :w<cr>:!doxygen<cr>
nmap gd :YcmCompleter GoToDefinitionElseDeclaration<cr>
" Align comments
map <leader>ac :Tabularize /\/\/<cr>
set foldmethod=syntax
set foldnestmax=1
set foldlevel=1
let c_no_comment_fold=1
