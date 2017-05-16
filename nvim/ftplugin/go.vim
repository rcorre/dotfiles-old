setlocal noet
let g:go_fmt_command="goimports"

nnoremap gD :vs<bar>GoDef<cr>
nnoremap go :GoDoc<space><c-r><c-w><cr>
nnoremap gO :GoDoc<space>
nnoremap <leader>r :GoRun<cr>
nnoremap <leader>t :GoTest<cr>
nnoremap <leader>j :tabnew /tmp/scratch.go<cr>
