syntax on
filetype plugin indent on

set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=2
"colorscheme murphy
colorscheme spacegray
"colorscheme xcode-vim

packloadall " Loading all plugins
silent! helptags ALL " Load help files for all plugins
command! Bd :bp | :sp | :bn | :bd " Close buffer without closing window
set foldmethod=indent

set wildmenu                    " Enabled enhanced tab complete
set wildmode=list:longest,full  " Complete till longest string
set number
set hlsearch
set incsearch

"let NERDTreeShowBookmarks = 1 " Show bookmark
"autocmd VimEnter * NERDTree " Enable NERDTree on startup

noremap <F3> :Autoformat<CR>
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

set directory=$HOME/.vim/swap//
au BufNewFile,BufRead *.ejs set filetype=html
