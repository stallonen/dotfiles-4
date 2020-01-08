set nocompatible

call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'dracula/vim'
	Plug 'chrisbra/Colorizer'
	Plug 'preservim/nerdtree'

	Plug 'junegunn/seoul256.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/limelight.vim'
call plug#end()

" GUI
syntax enable
filetype on
set background=dark
set t_Co=256
set hidden
set showcmd

" Font
set encoding=utf8
set guifont=Menlo\ for\ Powerline\ 10
set nolazyredraw
set smartcase
set ignorecase

" Misc
set number
set ruler
set mouse=a
set wrap
set hlsearch
set incsearch

" Tabulations
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab

" Backups
set nobackup
set noswapfile
set nowritebackup

" Inoremaps
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>

" Dracula Theme
let g:dracula_colorterm=0
let g:dracula_italic=0

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

" Colorscheme
colorscheme default

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
