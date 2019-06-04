
" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Copies using system clipboard
set clipboard+=unnamedplus

" Enable line/column info at bottom
set ruler
set cursorline " highlights current line

" enable mouse support
set mouse=a mousemodel=popup

" Tab = 4 spaces
set tabstop=4
set shiftwidth=4

" set sta
set expandtab
set softtabstop=4 " softtabstop, makes spaces feel like tabs when deleting

" YAML stuff
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab



