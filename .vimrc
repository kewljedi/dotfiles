call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'


Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'altercation/vim-colors-solarized'

call plug#end()


" Needtree
"
" GIT PLUGIN FOR NERDTREE https://github.com/Xuyuanp/nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" Syntastic SETUP from http://vimawesome.com/plugin/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline config
let g:airline_powerline_fonts = 1
:let g:airline_theme='solarized'

"solarized color scheme
syntax enable
set background=dark
colorscheme solarized
