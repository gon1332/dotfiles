filetype plugin indent on	" load filetype-specific indent files


" molokai
set t_Co=257
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai


" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"


" vim-commentary
autocmd FileType c   setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
