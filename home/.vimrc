:runtime defaults.vim
:set tabstop=4
:set shiftwidth=4
:set number
:set linebreak 

" alacritty
:set ttymouse=sgr

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'vimsence/vimsence'
let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'VIM'
Plug 'm-pilia/vim-pkgbuild'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/Rename2'
call plug#end()
