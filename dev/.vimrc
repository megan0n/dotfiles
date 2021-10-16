call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/greenvision'
Plug 'preservim/nerdtree'
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/loremipsum'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'protesilaos/tempus-themes-vim'
Plug 'ishan9299/modus-theme-vim', {'branch': 'stable'}
Plug 'tomasiser/vim-code-dark'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set t_Co=256
syntax enable
colorscheme codedark 

highlight Normal ctermbg=Black
highlight nonText ctermbg=Black
highlight EndOfBuffer ctermbg=Black
highlight LineNr ctermbg=Black
highlight VertSplit ctermbg=Black

set mouse=a
set ttymouse=xterm2
set number
set wrap!

let g:NERDTreeWinSize=20

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"set textwidth=80
