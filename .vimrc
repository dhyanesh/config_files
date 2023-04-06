set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

" My Bundles here:
"
" original repos on github
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on     " required!

set ai nocindent nosmartindent expandtab smarttab shiftwidth=2
set nu showmatch incsearch hlsearch showcmd tabstop=2 wildmode=list:longest
set smartcase
set mouse=a
set backspace=indent,eol,start

map <TAB> :bn <CR>
map <S-TAB> :bp <CR>
map <C-TAB> :bdelete <CR>

syn on
syn enable
set fo+=ro
set foldmethod=manual
map +   v%zf

set ruler
:map [[ ?{<CR>w99[{
:map ][ /}<CR>b99]}
:map ]] j0[[%/{<CR>
:map [] k$][%?}<CR>

let pattern = '\(\(_\(unit\)\?test\)\?\.\(cc\|js\|py\|go\)\|\(-inl\)\?\.h\)$'
nmap ,c :e <C-R>=substitute(expand("%"), pattern, ".cc", "")<CR><CR>
nmap ,h :e <C-R>=substitute(expand("%"), pattern, ".h", "")<CR><CR>
nmap ,t :e <C-R>=substitute(expand("%"), pattern, "_test.", "") . substitute(expand("%:e"), "h", "cc", "")<CR><CR>
nmap ,b :e %:h/BUILD<CR>

match Search /\ \n/
2match Search /\%<85v.\%>81v/
set t_Co=16
:colorscheme solarized

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:syntastic_always_populate_loc_list = 1
