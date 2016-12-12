call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'goatslacker/mango.vim'
Plug 'w0ng/vim-hybrid'

" General
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'

" Editing
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

" Eye candy
Plug 'myusuf3/numbers.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" C/C++
Plug 'octol/vim-cpp-enhanced-highlight'


call plug#end()
