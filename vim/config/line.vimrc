" All status line configuration goes here

set cmdheight=1
set display+=lastline

" general config
set laststatus=2	" always show status line
set showtabline=2	" always show tabline
set noshowmode		" hide default mode text (e.g. INSERT) as airline already displays it

" airline config
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1  " buffers at the top as tabs
let g:airline#extensions#tabline#show_tabs=1
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#tmuxline#enabled=0
let g:airline#extensions#branch = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep      = '▶'
let g:airline_left_alt_sep  = '»'
let g:airline_right_sep     = '◀'
let g:airline_right_alt_sep = '«'
let g:airline_branch_prefix     = '⎇'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'
let g:airline#extensions#tabline#left_sep       = '▶'
let g:airline#extensions#tabline#left_alt_sep   = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = ''

" disable unused extensions (performance)
let g:airline#extensions#ctrlp#color_template = 'insert'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#capslock#enabled   = 0
let g:airline#extensions#csv#enabled        = 0
let g:airline#extensions#ctrlspace#enabled  = 0
let g:airline#extensions#eclim#enabled      = 1
let g:airline#extensions#hunks#enabled      = 0
let g:airline#extensions#nrrwrgn#enabled    = 0
let g:airline#extensions#promptline#enabled = 0
let g:airline#extensions#syntastic#enabled  = 0
let g:airline#extensions#taboo#enabled      = 0
let g:airline#extensions#tagbar#enabled     = 0
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
