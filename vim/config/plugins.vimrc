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
