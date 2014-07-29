" =============================================================================
" =====================      Vim as Python 3 IDE     ==========================
" =============================================================================
"
"" Maintained by
""       Konstadelias Ioannis aka gon1332
""
"" July 2014

"
" -------- Use spaces instead of tabs
" Use 4 spaces instead of tabs as recommended by the creators
" "
setlocal tabstop=4     " how many columns a tab counts for
setlocal softtabstop=4 " how many columns vim uses on <Tab> in insert mode
setlocal shiftwidth=4  " how many columns text is indented with reindent ops
                       " (<< and >>)
setlocal shiftround
setlocal expandtab     " hittin <Tab> in insert mode will produce the approp-
                       " riate number of spaces

"
" -------- Save and run python with F2 key
" "
map <f2> :w\|!python3 %


" =====================
" PLUGINS
" =====================

"
" -------- Syntastic Plugin
" Syntax checker C specific settings
" $ cd ~/.vim/bundle
" $ git clone https://github.com/scrooloose/syntastic.git
" "
"" let g:syntastic_python_compiler_options = '-Wall'
let g:syntastic_python_checkers = ['flake8']

"
" -------- Jedi-Vim Plugin
" Use for autocompletion of library specifics
" $ cd ~/.vim/bundle
" $ git clone --recursive git://github.com/davidhalter/jedi-vim.git
" "
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
"" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

"
" -------- Ctrl-P Plugin
" Settings for ctrlp
" $ cd ~/.vim/bundle
" $ git clone https://github.com/kien/ctrlp.vim.git
" "
setlocal wildignore+=*.pyc

