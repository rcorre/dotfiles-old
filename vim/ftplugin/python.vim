set foldmethod=indent

" don't set # to 0 indent
set nosmartindent

" cino=(0 causes alignment with the '(' when text follows the '('
" void foo(int i,
"          string s,
"          float f);
" cino=(0,Ws causes normal indentation when no text follows the '('
" void foo(
"     int i,
"     string s,
"     float f);
set cino=(0,Ws

nnoremap <leader>p :!python<cr>
nnoremap <leader>j :tabnew /tmp/scratch.py<cr>
nnoremap <leader>r :!python %<cr>
nnoremap <leader>ep :CtrlP /usr/share/sip/<cr>

set tw=79
