syntax on
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

"Source vim config"
source $HOME/.config/nvim/plug-config/coc.vim

"Vim - Plug"
call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'ThePrimeagen/vim-be-good'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'

call plug#end()

"Themes - Dracula"
colorscheme dracula

"NERDTree key mappings"
map <C-n> :NERDTreeToggle<CR>
"Close vim if the only window left open is a NERDTree"
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Key mappings
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap <C-p> :Files<CR>
nnoremap <C-x> :q<CR>
