call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'goatslacker/mango.vim'
Plug 'w0ng/vim-hybrid'
Plug 'davb5/wombat256dave'
Plug 'dikiaap/minimalist'

" General
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'

" Editing
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'

" Eye candy
Plug 'myusuf3/numbers.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" C/C++
Plug 'octol/vim-cpp-enhanced-highlight'

" Rust
Plug 'rust-lang/rust.vim'

" Doxygen
Plug 'vim-scripts/DoxyGen-Syntax'

call plug#end()
