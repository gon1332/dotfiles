
" Use spaces instead of tabs
" Use 4 spaces instead of tabs as recommended by my style
setlocal tabstop=4		" number of visual spaces per TAB
setlocal softtabstop=4	" number of spaces in tab when editing
setlocal shiftwidth=4	" number of spaces using `<<` & `>>`


" Use a colored column for keeping line width at logical lenghs
set colorcolumn=80
" highlight ColorColumn ctermbg=darkgray


" File-type detection
" I want header files treated as C files
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END


" Setting path variable
" gf command. Really usefull for inspecting header files
" Ctrl-O to return from gf.
let &path.="include,src/include,/usr/include/AL"
