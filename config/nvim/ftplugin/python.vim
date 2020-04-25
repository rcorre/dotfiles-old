set tw=79
set expandtab
setlocal foldmethod=indent
nnoremap <leader>p :vs <bar> term python<cr>
nnoremap <c-p> :FZF -q !__pycache__ <cr><space>
nnoremap <c-q> :FZF -q py$ /usr/lib/<cr><space>
nnoremap <leader>up :FZF -q py$ ~/.local/lib<cr><space>
nnoremap <leader>j :tabnew /tmp/scratch.py<cr>

let g:pymode_lint=0
