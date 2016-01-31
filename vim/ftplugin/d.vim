" non-makefile build commands
nmap <leader>c :w <bar> !dmd %<cr>
nmap <leader>r :w <bar> !rdmd --compiler=dmd %<cr>
nmap <leader>m :w <bar> !make<cr>
nmap <leader>t :w <bar> !rdmd -Isrc --compiler=dmd -main -unittest -debug -g %<cr>

" comment line
nnoremap <leader>b o//**<esc>80a*/<esc>

" align comments (// or ///)
map <leader>ac :Tabularize /\/\/\+<cr>

" align member names, accounting for default value assignments
map <leader>am :Tabularize /\v\w+\s*[;=].*<cr>

" align commas (g for 'grouping'? I know, not a great mnemonic)
map <leader>ag :Tabularize /,/l0l1<cr>

" delete text leading up to a block as well as the block itself
nnoremap <leader>db dt{da{

" open a std library file ("Edit D")
nnoremap <leader>ed :CtrlP /usr/include/dlang/dmd/std/<cr>

" makefile build/test/run
map <f1> :wa<cr>:!clear<cr>:Dispatch dub run --quiet<cr>
map <f2> :wa<cr>:!clear<cr>:Dispatch dub build --quiet<cr>
map <f3> :wa<cr>:!clear<cr>:Dispatch dub test --quiet<cr>
map <f4> :wa<cr>:!clear<cr>:Dispatch dub build --quiet --build=ddox<cr>

" search source files
map <leader>f :vimgrep  src/**<left><left><left><left><left><left><left>
map <leader>F :vimgrep <c-r><c-w> src/**<cr>

" open a junk file for quick experimenting
map <leader>j :tabnew /tmp/scratch.d<cr>

" folding
set foldmethod=syntax
set foldnestmax=4

" text width
set tw=100
set colorcolumn=81

" detect assert errors and extract filename and linenumber
" some.module.ErrorType@some/file.d(123): some message
set errorformat=%f(%l\\,%c):%m
set errorformat+=%-G%.%#

" discard non-matching lines

" comment continuation
setlocal formatoptions+=c,r,o
" only continue block comments
setlocal comments-=:// comments+=f://

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

" surround with /++ ++/ comments (use S+ to surround selection)
let b:surround_43 = "/++ \r ++/"

" DCD
nnoremap gd :DUjump<cr>
