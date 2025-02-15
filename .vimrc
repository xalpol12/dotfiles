" no compatiblity with vi
:set nocompatible

" relative line numbers
:set number
:set relativenumber

:set scrolloff=10

:set nowrap

" search stuff
:set ignorecase " case insensitive search
:set incsearch " highlights items while increamentally searching
:set showmatch " show matching words during a search
:set hlsearch " use highlighting when doing a search

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set autoindent smartindent
syntax enable
