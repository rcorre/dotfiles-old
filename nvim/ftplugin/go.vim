setlocal noet
setlocal foldnestmax=1

let g:go_fmt_command="goimports"
" prevent collapsing folds on save
let g:go_fmt_experimental=1
let g:go_gocode_unimported_packages = 1

nnoremap gD :vs<bar>GoDef<cr>
nnoremap go :GoDoc<space><c-r><c-w><cr>
nnoremap gO :GoDoc<space>
nnoremap <leader>r :GoRun<cr>
nnoremap <leader>t :GoTest<cr>
nnoremap <leader>j :tabnew /tmp/scratch.go<cr>

nnoremap <c-q> :FZF -q go$ /usr/lib/go<cr><space>
nnoremap <c-s> :FZF -q go$ ./vendor<cr><space>
inoremap <c-e> if err != nil {<cr>return err<cr>}<cr>
inoremap <c-p> if err != nil {<cr>panic(err)<cr>}<cr>

let g:neomake_go_gometalinter_args=['--disable-all', '-E', 'golint', '-E', 'vet', '--vendor', '--tests', '--deadline=10s']
