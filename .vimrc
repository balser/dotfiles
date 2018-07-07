" manage plugins with vim-plug
call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go'
call plug#end()

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set undodir=$VIM_UNDO
set undofile
set relativenumber number
set colorcolumn=80

" set highlighted cursorline
set cursorline
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
hi CursorLine term=bold cterm=bold ctermbg=darkgrey guibg=Grey40

" toggle numbers display
nnoremap <C-n> :set norelativenumber! nonumber!<CR>

" yank/put using clipboard
set clipboard=unnamedplus

" fatih/vim-go
let g:go_fmt_command = "goimports"
