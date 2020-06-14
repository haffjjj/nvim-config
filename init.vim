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

"VimPlug
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
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'

call plug#end()

"Themes - Dracula"
colorscheme dracula

"NERDTree 
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * :terminal
autocmd VimEnter * :set autoread | au CursorHold * checktime | call feedkeys("G")
autocmd VimEnter * :sp sb N
autocmd VimEnter * :resize 45
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  
"Key mappings
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap <C-p> :Files<CR>
nnoremap <C-m> :w<CR>
nnoremap <C-x> :q<CR>
tnoremap <C-w> <C-[><C-[> <C-\><C-n>

"Key mappings - Emmet
imap ,, <C-y>,

"Key mappings - Coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selectedHello world)
