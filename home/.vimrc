" base setting
if &compatible
  set nocompatible               " Be iMproved
endif

set showcmd        " Show (partial) command in status line.
set showmatch      " Show matching brackets.
set ignorecase     " Do case insensitive matching
set smartcase      " Do smart case matching
set incsearch      " Incremental search
set autowrite      " Automatically save before commands like :next and :make
set hidden         " Hide buffers when they are abandoned
set mouse=a        " Enable mouse usage (all modes)
set number
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>

set wildmenu
set clipboard+=unnamed

" status line
set laststatus=2
set statusline=%f%m=%y[%{&fileencoding}][%{&fileformat}]

" enable modeline
set modeline
set modelines=3

" color scheme
syntax on
colorscheme elflord

" backspace
set backspace=indent,eol,start

"Start dein Scripts-------------------------

" Required:
set runtimepath^=~/.dein.vim/src

" Required:
call dein#begin(expand('~/.dein.vim/src'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#add('scrooloose/nerdtree')
call dein#add('Shougo/neocomplete.vim')

" Required:
call dein#end()

"End dein Scripts-------------------------

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" launch NERDTree without specified file
let file_name = expand('%')
if has('vim_starting') &&  file_name == ''
  autocmd VimEnter * NERDTree ./
endif
