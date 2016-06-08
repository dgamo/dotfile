set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'

call vundle#end()            " required
filetype plugin indent on
"enable mouse
set mouse=a

"NerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3 

"Theme and font
syntax enable
set background=dark
colorscheme solarized
set guifont=Monaco\ 14

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Enable numbers
set number
" Share clipboard
set clipboard=unnamed
" Hide toolbars in GUI
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=L  "remove left-hand scroll barBS>
