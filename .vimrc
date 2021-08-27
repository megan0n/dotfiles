call plug#begin('~/.vim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
call plug#end()

set t_Co=256
set background=dark
colorscheme codedark 

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight EndOfBuffer ctermbg=NONE
highlight LineNr ctermbg=NONE
highlight VertSplit ctermbg=NONE

set mouse=a
set number
set wrap!

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
