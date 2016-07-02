" VIM config file SR 2012
runtime! archlinux.vim


filetype off
" call pathogen#incubate()
execute pathogen#infect()
call pathogen#helptags()

:let mapleader = "-"

set foldmethod=indent
set foldlevel=99
map <leader>td <Plug>TaskList
let g:pep8_map='8'
map <leader>g :GundoToggle<CR>
let pyflakes_use_quickfix = 0

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

let g:tlTokenList = ['#TODO', '#SR!', '!SR','@todo']

set nocompatible
"set encoding=utf-8
set showcmd
set ruler
set number
set shell=bash

" don't jump to start of line on page up/down
set nostartofline

" let cursor go to non-char locations in visual mode
set virtualedit=block

" general settings
set expandtab
set textwidth=70
set tabstop=8
set softtabstop=4
set shiftwidth=4
"set autoindent
set formatoptions="qnl"
set hidden
set scrolloff=2
set novisualbell

" powerline
" set rtp+=/usr/lib/python3.5/site-packages/powerline/bindings/vim/
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
" set rtp+=/usr/share/vim/vimfiles/plugin/
set laststatus=2        " Always display the statusline in all windows
set showtabline=2       " Always display the tabline, even if there is only one tab
set noshowmode          " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256            " Use 256 colours (Use this setting only if your terminal supports 256 colours)


" search
set ignorecase
set smartcase
set incsearch

" mappings
inoremap jj <Esc><Right>
inoremap kk <Esc><Right>
inoremap hh <Esc><Right>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
cnoremap jj <Esc>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
nnoremap , :

nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>
nnoremap <C-l> l

" turn off ex mode
map Q gq

" keep us focused on vim commands
noremap <Left> :echo "use h"<CR>
noremap <Right> :echo "use l"<CR>
noremap <Up> :echo "use k"<CR>
noremap <Down> :echo "use j"<CR>

" seek & replace
nmap <F5> /
cmap <F5> <CR>
nmap <F6> /<c-r><c-w><CR>

" search from current line and forward.
nmap <F7> :.,$s//
nmap <F8> :.,$s/<c-r><c-w>/

" buffer swap
nmap <f9> :bp<CR>
nmap <f10> :bn<CR>

" Remove trailing whitespace in code
autocmd FileType c,cpp,java,php,python autocmd BufWritePre * :%s/\s\+$//e

" set python hilighting for Griatch.vim theme
let python_highlight_all = 1
let python_slow_sync = 1
" silent! :colorscheme Griatch
:syntax on
filetype on
filetype plugin indent on


"" LaTeX suite specific settings
"set grepprg=grep\ -nH\ $*
"filetype indent on
"let g:tex_flavor='latex'


" Plugins

call plug#begin('~/.vim/plugged')
" blueish theme
"Plug 'whatyouhide/vim-gotham'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'tmux-plugins/vim-tmux'

" evennia syntax etc >> https://github.com/amfl/vim-evennia.git
Plug 'amfl/vim-evennia'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

call plug#end()



if has('gui_running')
 set background=dark
 " colorscheme solarized
 colorscheme gotham
endif
