set nocompatible
set backspace=indent,eol,start

colorscheme desert
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1,big5 " 如果要打开的文件编码不在此列，那就添加进去
set termencoding=utf-8

syntax on
syntax enable
set number
set completeopt=longest,menu

set autoread
set incsearch
set smartcase
set autoindent
set tabstop=3
set softtabstop=3
set shiftwidth=4

"test

"Auto complete
""inoremap (  ()<esc>i
"inoremap [ []<esc>i
"inoremap { {}<esc>i
"inoremap ' ''<esc>i
"inoremap " ""<esc>i
"inoremap < <><esc>i))

imap jj <esc>
imap jk <esc>
imap ;; <esc>
inoremap $4 {<esc>o}<esc>O
inoremap kl {<esc>o}<esc>O


set history=700

filetype plugin indent on

let mapleader=","
let g:mapleader=","
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>


autocmd FileType c,cpp,java :set cindent
autocmd FileType c,cpp :map <F5> :make %< <CR>
autocmd FileType c,cpp :map <F7> :!g++ -g % -o %< && gdb %< <CR>
autocmd FileType c,cpp :map <F6> :!./%< <CR>
autocmd FileType java :map <F5> :!javac % <CR>
autocmd FileType java :map <F6> :!java %< <CR>


