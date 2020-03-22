" disable vi compatibility
set nocompatible

" turn on syntax highlighting
syntax on

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<cr>
nmap <C-c> :w! ~/.vimbuffer<cr>

" paste to buffer
map <C-p> :r ~/.vimbuffer<cr>
set mouse=a

" package manager
execute pathogen#infect()
filetype indent plugin on

" color scheme
set background=dark
let color = 'dracula'
let g:airline_solarized_bg='dark'
color dracula
let g:airline_theme='powerlineish'
let g:flake8_show_in_gutter=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#exensions#tabline#show_buffers = 0

" show line numbers
set number

" specify indentation
set tabstop=2
set shiftwidth=2
set expandtab

" show location in file
set ruler

" disable bells
set noerrorbells

" command history buffer
set history=1000

" wrap line
set wrap

" security
set modelines=0

" visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<cr>
