set foldmethod=syntax
set foldenable
set foldlevel=1
set foldnestmax=5
syn region foldBraces start=/{/ end=/}/ transparent fold
syn region foldJavadoc start=,/\*\*, end=,\*/, transparent fold keepend
