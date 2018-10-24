filetype plugin indent on	" load filetype-specific indent files


" minimalist
set t_Co=257
colorscheme minimalist


" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"


" vim-commentary
autocmd FileType c   setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s


" DoxyGen-Syntax
let g:load_doxygen_syntax = 1


" Ack
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Ale
"Signs
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '❗'

"Echoed message
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"Linters
let g:ale_linters = {
\   'c': ['clangd', 'uncrustify'],
\   'python': ['flake8'],
\}
