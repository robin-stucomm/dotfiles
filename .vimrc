set nocompatible
syntax enable
filetype plugin on
set number
execute pathogen#infect()

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=4


" Switch buffer
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Nerdtree
map <C-n> :NERDTreeToggle<CR>



set splitbelow
set splitright

filetype plugin indent on
