"come on, don't be silly
set nocompatible

syntax on
filetype on
filetype indent on
filetype plugin on

"tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"make things better
set guioptions=rh
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn
set visualbell
set cursorline
set number
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set cul
set nobackup
set nowritebackup
set noswapfile
set cpoptions+=$

"invisible stuff
"set list
set listchars=tab:▸\ ,eol:¬

"leader key
let mapleader = ","

"shift key fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe
nore ; :
nore , ;

"tags
set tags=./tags;

"visual shifting
vnoremap < <gv
vnoremap > >gv

"remember marks
set viminfo='100,f1

"searching/moving
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"long lines
set wrap
set textwidth=79
set formatoptions=qrn1

"help key!
noremap  <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"use jj to exit back to normal mode
inoremap jj <ESC>

"creating splits
nnoremap <leader>w <C-w>v
nnoremap <leader>s <C-w>s

"navigation over splits
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

set background=dark
:colorscheme wombat
"ir_black
set t_Co=256
set guifont=Menlo:h18
set lines=35 columns=120

let g:CommandTMaxHeight=20

if has ("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd FileType make set noexpandtab
endif

nmap <leader>v :tabedit $MYVIMRC<cr>

augroup filetype
  au! BufRead,BufNewFile {*.java} set ft=java
  au! BufRead,BufNewFile *Makefile* set filetype=make
  au! BufRead,BufNewFile {Gemfile,Rakefile,config.ru} set ft=ruby
  au! BufNewFile,BufRead *.json set ft=javascript
augroup END

