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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'moll/vim-node'
Plugin 'haya14busa/incsearch.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-haml'
Plugin 'crusoexia/vim-monokai'
Plugin 'benmills/vimux'
Plugin 'majutsushi/tagbar'
Plugin 'vim-gitgutter'
Plugin 'dkprice/vim-easygrep'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ervandew/supertab'


call vundle#end()            " required
filetype plugin indent on
"enable mouse:
set mouse=a

"NerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3 
let NERDTreeShowHidden=1

"Tern
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

"TagBar
nmap <F8> :TagbarToggle<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']

"YouCompleteMe
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.javascript = ['re!(?=[a-zA-Z_])']

"incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:python_host_prog = '/usr/local/lib/python2.7'

"vim-fugitive
set statusline+=%{fugitive#statusline()}

"Vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"Ctrlp
let g:ctrlp_working_path_mode = 'ra' "start search in the nearest ancestor with .git

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.min.js,*/node_modules/*


"Theme and font
syntax enable
colorscheme monokai
set t_Co=256
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

 set guifont=Monaco:h15

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

set hlsearch "Highlighted searching
set autoread
