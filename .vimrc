call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'


Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'

Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'editorconfig/editorconfig-vim'

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
let g:airline_theme='solarized'

" solarized color scheme
syntax enable
set background=dark
colorscheme solarized

" git gutter
let g:GitGutterEnable = 1
let g:GitGutterSignsEnable = 1
let g:GitGutterLignHighlightEnable = 1


" basic settings
filetype on
set number
set colorcolumn=90
set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set smartindent
set autoindent

"remove spaces when we save
autocmd BufWritePre * :%s/\s\+$//e

"Search just a big nicer
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
