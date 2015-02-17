" nim language settings

" compiling and running
nmap <leader>c :w <bar> !nim compile %<cr>
nmap <leader>r :w <bar> !nim compile --run %<cr>
nmap <leader>m :w <bar> !make<cr>

" GoTo Definition
fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Jump to tag
nnoremap gd :call JumpToDef()<cr>
inoremap gd <esc>:call JumpToDef()<cr>i
