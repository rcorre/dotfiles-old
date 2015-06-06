" non-makefile build commands
nmap <leader>c :w <bar> !dmd %<cr>
nmap <leader>r :w <bar> !rdmd --compiler=dmd %<cr>
nmap <leader>m :w <bar> !make<cr>
nmap <leader>t :w <bar> !rdmd -Isrc --compiler=dmd -main -unittest -debug -g %<cr>

" comment line
nnoremap <leader>b o//**<esc>80a*/<esc>

" align comments and member assignments
map <leader>ac :Tabularize /\/\/<cr>
map <leader>aC :Tabularize /\/\/\/<cr>
map <leader>am :Tabularize /\s_.*/<cr>

" delete text leading up to a block as well as the block itself
nnoremap <leader>db dt{da{

" makefile build/test/run
map <f2> :wa<cr>:!clear<cr>:Dispatch dub build --quiet --build=ddox<cr>
map <f3> :wa<cr>:!clear<cr>:Dispatch dub test --quiet<cr>
map <f4> :wa<cr>:!clear<cr>:Dispatch dub build --quiet<cr>
map <f5> :wa<cr>:!clear<cr>:Dispatch dub run --quiet<cr>

" search source files
map <leader>f :vimgrep src/**<left><left><left><left><left><left><left>
map <leader>F :vimgrep <c-r><c-w> src/**<cr>

" open a junk file for quick experimenting
map <leader>j :tabnew /tmp/scratch.d<cr>

" folding
set foldmethod=syntax
set foldnestmax=4

" text width
set tw=100
set colorcolumn=101

" allow jumping to unittest assert failures from quickfix
set errorformat^=%m@%f(%l):\ unittest\ failure
set errorformat+=%-G%.%#

" comment continuation
setlocal formatoptions+=c,r,o
" only continue block comments
setlocal comments-=:// comments+=f://

" surround with /++ ++/ comments (use S+ to surround selection)
let b:surround_43 = "/++ \r ++/"
