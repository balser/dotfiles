" Automatic installation
" See: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

" fatih/vim-go
let g:go_fmt_command = "goimports"
