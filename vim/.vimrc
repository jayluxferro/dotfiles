set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" install locally
" yarn add eslint babel-eslint eslint-plugin-react prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-import stylelint eslint-config-airbnb eslint-plugin-jsx-a11y
" install globaly: npm i -g eslint babel-eslint eslint-plugin-react prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-import stylelint eslint-config-airbnb eslint-plugin-jsx-a11y
"

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'prettier/prettier'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'moll/vim-node'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-unimpaired'
Plugin 'Chiel92/vim-autoformat'
Plugin 'djoshea/vim-autoread'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'jvanja/vim-bootstrap4-snippets'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'ycm-core/YouCompleteMe'
" end of plugins
call vundle#end()            " required

" my hack

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
"colorscheme spacegray
"colorscheme xcode-vim
"colorscheme nova-vim

packloadall " Loading all plugins
silent! helptags ALL " Load help files for all plugins
command! Bd :bp | :sp | :bn | :bd " Close buffer without closing window
set foldmethod=indent

set wildmenu                    " Enabled enhanced tab complete
set wildmode=list:longest,full  " Complete till longest string
set number
set hlsearch
set incsearch
set backupcopy=yes
"let NERDTreeShowBookmarks = 1 " Show bookmark
"autocmd VimEnter * NERDTree " Enable NERDTree on startup

noremap <F3> :Autoformat<CR>
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

set directory=$HOME/.vim/swap//
au BufNewFile,BufRead *.ejs set filetype=html
set laststatus=2

" Markdown Preview
let vim_markdown_preview_github=1

" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Autosave
" let g:auto_save = 1  " enable AutoSave on Vim startup

" Javascript vim
let g:javascript_plugin_jsdoc = 1

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
