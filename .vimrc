set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'chriskempson/base16-vim'
call vundle#end()
filetype plugin indent on

syntax on


":inoremap <C-v> <ESC>"+pa
":vnoremap <C-c> "+v
":vnoremap <C-d> "+d


set smarttab
set number
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set termencoding=utf8
set mouse=a
set mousemodel=popup
set ch=1
set mousehide
set smartindent
set expandtab
set textwidth=120
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set t_Co=256
set clipboard=unnamedplus
set background=dark
"colorscheme gruvbox
"colorscheme base16-default-dark
"let g:airline_solarized_bg='dark'
"let g:airline_theme='tomorrow'
"let g:airline_powerline_fonts = 1
"let g:gruvbox_italic=1
autocmd BufWritePre *.py :%s/\s\+$//e
map <F2> :NERDTreeToggle<CR>
"colorscheme wal
