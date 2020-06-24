nnoremap gh :CocCommand clangd.switchSourceHeader<cr>
nnoremap sh :vs<cr>:CocCommand clangd.switchSourceHeader<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :vs<cr><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gI <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
