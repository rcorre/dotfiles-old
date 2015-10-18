" align comments (// or ///)
map <leader>ac :Tabularize /\/\/\+<cr>

" align member names, accounting for default value assignments
map <leader>am :Tabularize /\v\w+\s*[;=].*<cr>

" align commas (g for 'grouping'? I know, not a great mnemonic)
map <leader>ag :Tabularize /,/l0l1<cr>

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
