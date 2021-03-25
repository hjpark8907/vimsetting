set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'gmarik/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'majutsushi/tagbar'
	Plugin 'nathanaelkane/vim-indent-guides'
	Plugin 'vim-airline/vim-airline' "vim status bar
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'blueyed/vim-diminactive'
	Plugin 'rudrab/vimf90' 
call vundle#end()

set number
set hls
set shiftwidth=4
set ts=4
set autoindent
set smarttab
set smartindent

set t_Co=256

" for jellybeans
colorscheme jellybeans

" for indent guide
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

syntax enable
filetype indent on
highlight Comment term=bold cterm=bold ctermfg=4

" for go tag : shorcut : ctrl + ] , return shorcut : ctrl + t
map <F2> :!ctags -R<CR> :set tags=./tags<CR>

let fortran_free_source=1
let fortran_do_enddo=1
filetype plugin indent on
syntax on

let fortran_linter=-1

"map <F5> :!clear && ifort *.f90 -g -o a.out<CR>
map <F5> :!clear && gcc *.c -g -o a.out<CR>

" Termdebug 의 창분할 설정
map <F6> :packadd termdebug<CR> :Termdebug %:r<CR><c-w>2j<c-w>H :vertical res +30 <CR>

" for taglist
nmap <F8> :Tagbar<CR>

" for NERDTree
nmap <F7> :NERDTree<CR>
let NERDTreeShowLineNumbers=1

set fileencodings=utf8,euc-kr


