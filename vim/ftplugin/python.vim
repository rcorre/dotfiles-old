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
