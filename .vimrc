set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'rainerborene/vim-reek' "Finds ruby code smells
Plugin 'w0rp/ale' "Linter
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable                           " enable syntax processing
set tabstop=2                           " number of visual spaces per TAB
set softtabstop=2                       " number of spaces in tab when editing
set expandtab                           " tabs are spaces
set shiftwidth=2
set autoindent
set smartindent
set showcmd                             " show command in bottom bar
set wildmenu                            " visual autocomplete for command menu
set ruler                               " Show line,column in status bar eg. 28,45
set incsearch                           " search as characters are entered
" set hlsearch                            " highlight matches
set viminfo='20,<1000                   " Copy up to 1000 lines
set so=3                                " minumum lines above/below cursor

" move vertically by visual line
nnoremap j gj
nnoremap k gk

nnoremap <leader>s :mksession<CR>       " save session

colorscheme sol
filetype plugin indent on
"autocmd Filetype gitcommit spell textwidth=72
let g:airline#extensions#ale#enabled = 1
let g:airline_theme='sol'

