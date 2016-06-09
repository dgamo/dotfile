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
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/syntastic'
Plugin 'ternjs/tern_for_vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on
"enable mouse
set mouse=a

"NerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3 
let NERDTreeShowHidden=1

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"vim-fugitive
set statusline+=%{fugitive#statusline()}

"Ctrlp
let g:ctrlp_working_path_mode = 'ra' "start search in the nearest ancestor with .git
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.min.js

"Theme and font
syntax enable
set background=dark
colorscheme solarized

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Monaco\ 14
  elseif has("gui_macvim")
    set guifont=Monaco:h15
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

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
