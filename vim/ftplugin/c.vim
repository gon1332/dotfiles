" =============================================================================
" =========================     Vim as C IDE     ==============================
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
"" setlocal shiftround
"" setlocal expandtab     " hittin <Tab> in insert mode will produce the approp-
                       " riate number of spaces

"
" -------- File-type detection
" I want header files treated as C files
" "
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

"
" -------- Setting path variable
" gf command. Really usefull for inspecting header files
" Ctrl-O to return from gf.
" "
let &path.="src/include,/usr/include/AL,"


" =====================
" PLUGINS
" =====================

"
" -------- Syntastic Plugin
" Syntax checker C specific settings
" $ cd ~/.vim/bundle
" $ git clone https://github.com/scrooloose/syntastic.git
" "
let g:syntastic_c_check_header = 1
let g:syntastic_c_compiler_options = '-Wall -Wextra -std=gnu99'


"
" -------- YouCompleteMe Plugin
" Auto-completion tool for C-family languages
" $ cd ~/.vim/bundle
" $ git clone https://github.com/Valloric/YouCompleteMe.git
" $ cd YouCompleteMe
" $ git submodule update --init --recursive
" $ ./install.sh --clang-completer
" "
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"
" -------- Ctrl-P Plugin
" Settings for ctrlp
" $ cd ~/.vim/bundle
" $ git clone https://github.com/kien/ctrlp.vim.git
" "
setlocal wildignore+=*.o

