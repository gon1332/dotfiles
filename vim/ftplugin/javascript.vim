
" Use spaces instead of tabs
" Use 2 spaces instead of tabs as recommended by my style
setlocal tabstop=2		" number of visual spaces per TAB
setlocal softtabstop=2	" number of spaces in tab when editing
setlocal shiftwidth=2	" number of spaces using `<<` & `>>`


" Use a colored column for keeping line width at logical lenghs
set colorcolumn=80
" highlight ColorColumn ctermbg=darkgray


" File-type detection
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.js set filetype=javascript
augroup END


" Setting path variable
" gf command. Really usefull for inspecting header files
" Ctrl-O to return from gf.
set suffixesadd+=.js
set path+=$PWD/node_modules
set path+=node_modules;~
