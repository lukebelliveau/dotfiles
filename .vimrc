set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'mxw/vim-jsx'
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ctrlpvim/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

" YouCompleteMe menu color
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#0000ff
" set backspace to delete normally
set backspace=indent,eol,start
" indents to 2 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" auto close braces, parens, etc
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

"line number ruler
set ruler
execute pathogen#infect()
call pathogen#helptags()

