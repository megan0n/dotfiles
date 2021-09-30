call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/loremipsum'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'protesilaos/tempus-themes-vim'
call plug#end()

set t_Co=256
syntax enable
colorscheme tempus_totus

set mouse=a
set number
set wrap!

let g:NERDTreeWinSize=20

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
