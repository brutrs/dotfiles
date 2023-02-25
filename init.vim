syntax on

call plug#begin()
Plug 'olimorris/onedarkpro.nvim'
call plug#end()


" Enable mode lines
set modeline
" Set the tab size to 4 spaces
set tabstop=4 shiftwidth=4 expandtab
" Use the system clipboard instead of registers
set clipboard+=unnamedplus
" Display line numbers
set number

" Enable the One Dark colorscheme
colorscheme onedark
