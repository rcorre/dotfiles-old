set tw=79
set expandtab
setlocal foldmethod=indent
nnoremap <leader>r :!python %<cr>
nnoremap <leader>p :vs <bar> term python<cr>
setlocal omnifunc=pythoncomplete#Complete
nnoremap <c-p> :FZF -q !__pycache__ <cr><space>
nnoremap <c-q> :FZF -q py$ /usr/lib/<cr><space>
nnoremap <leader>up :FZF -q py$ ~/.local/lib<cr><space>
nnoremap <leader>j :tabnew /tmp/scratch.py<cr>

if getline(1) =~# '^#!.*python2.*'
	let g:neomake_python_python_exe='python2'
	let g:neomake_python_pylint_exe='pylint2'
endif

MUcompleteAutoOff
