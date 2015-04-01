" =============================================================================
" =========================    Vim as C++ IDE    ==============================
" =============================================================================
"
"" Maintained by
""       Konstadelias Ioannis aka gon1332
""
"" July 2014

"
" -------- Use spaces instead of tabs
" Use 4 spaces instead of tabs as recommended by my style
" "
setlocal tabstop=4     " how many columns a tab counts for
setlocal softtabstop=4 " how many columns vim uses on <Tab> in insert mode
setlocal shiftwidth=4  " how many columns text is indented with reindent ops
                       " (<< and >>)
setlocal shiftround
setlocal expandtab     " hittin <Tab> in insert mode will produce the approp-
                       " riate number of spaces

" =====================
" PLUGINS
" =====================

"
" -------- Syntastic Plugin
" Syntax checker C++ specific settings
" $ cd ~/.vim/bundle
" $ git clone https://github.com/scrooloose/syntastic.git
" "
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler_options = '-Wall -Wextra -std=c++11'

"
" -------- Ctrl-P Plugin
" Settings for ctrlp
" $ cd ~/.vim/bundle
" $ git clone https://github.com/kien/ctrlp.vim.git
" "
setlocal wildignore+=*.o

