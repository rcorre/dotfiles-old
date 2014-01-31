set sw=2
set iskeyword+=:
"latex-box
function MakeAndClean()
  :Latexmk
  :LatexmkClean
endfunction
"nnoremap <leader>mm :exec<Space>MakeAndClean()<Enter>''
nnoremap <leader>mm :w<Enter>:Latexmk<Enter>
nnoremap <leader>mc :LatexmkClean<Enter>
nnoremap <leader>v  :LatexView<Enter>
"let g:LatexBox_latexmk_options="--output-directory=latex-build"
let g:LatexBox_Folding=1
"let b:build_dir="texbuild"

"pdflatex
"let g:Tex_DefaultTargetFormat='pdf'
"let g:TexMultipleCompileFormats='dvi,pdf'
"let g:TexCompileRule_pdf='mkdir -p tmp; pdflatex -output-directory tmp -interaction=nonstopmode --shell-escape $*; cp tmp/*.pdf .'

"TTarget pdf
"let g:Tex_SmartKeyQuote=0
"let g:TexMultipleCompileFormats='dvi,pdf'
"let g:TexCompileRule_pdf='pdflatex --shell-escape $*'
