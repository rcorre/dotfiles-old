" nim language settings
" GoTo Definition
" 
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
