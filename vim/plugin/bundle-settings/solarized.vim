" Solarized colorcheme

" enable 256 colors
set t_Co=16
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm

" set colorscheme, dark bg
set bg=dark
colorscheme solarized

" f1 toggles light/dark (defaults to f5)
call togglebg#map("<F1>")
