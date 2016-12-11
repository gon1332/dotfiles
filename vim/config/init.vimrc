call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'goatslacker/mango.vim'
"Plug 'w0ng/vim-hybrid.vim'

" General
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Eye candy
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" C/C++
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()
