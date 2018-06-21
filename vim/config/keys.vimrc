" map leader
let mapleader = ","


" bind nohl
" removes highlight of the last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>


" quicksave command with F2
noremap <F2> :update<CR>
vnoremap <F2> <C-C>:update<CR>
inoremap <F2> <C-O>:update<CR>


" bind Ctrl+<movement> keys to move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving between tabs with <leader>{n, m}
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" easier moving of code blocks
" Go into visual mode (v), then select several lines of code and press `>`
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" relative line numbers
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>


" open ack.vim
nnoremap <Leader>a :Ack
