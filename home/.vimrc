:runtime defaults.vim
:set tabstop=4 
:set shiftwidth=4
:set expandtab
:set softtabstop=4
:set number
:set linebreak 
:set fileencoding=utf-8
":setlocal foldmethod=indent
":set nowrap

" alacritty
:set ttymouse=sgr

" Macros
let @j='g$aÂ€Ã½a'
let @c='gg10000dd"+p:wGo€ý5:!python3 test.py | wl-copy'

" Map key chord `jk` to <Esc>
" Should keep pasting and quick typing working
" Change values in line 4 as needed
"let g:esc_j_lasttime = 0
"let g:esc_k_lasttime = 0
"function! JKescape(key)
    "if a:key=='j' | let g:esc_j_lasttime = reltimefloat(reltime()) | endif
        "if a:key=='k' | let g:esc_k_lasttime = reltimefloat(reltime()) | endif
            "let l:timediff = abs(g:esc_j_lasttime - g:esc_k_lasttime) 
            "return (l:timediff <= 0.05 && l:timediff >=0.001) ? "\b\e" : a:key
"endfunction
"inoremap <expr> j JKescape('j')
"inoremap <expr> k JKescape('k')

" vim-plug
" run `PlugInstall`
call plug#begin('~/.vim/plugged')
"Plug 'vimsence/vimsence'
    "let g:vimsence_client_id = '439476230543245312'
    "let g:vimsence_small_text = 'VIM'
Plug 'm-pilia/vim-pkgbuild'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/Rename2'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'
    let g:indentLine_char = 'â”‚'
    let g:indentLine_fileType = ['c', 'cpp', 'h', 'hpp', 'python', 'ino']
    let g:indentLine_enabled = 1
    let g:indentLine_color_term = 247
    ":IndentLinesEnable
Plug 'elkowar/yuck.vim'
Plug 'vim-python/python-syntax'
call plug#end()

" Colorscheme(s)
":colorscheme ron
":colorscheme dracula
colorscheme based
