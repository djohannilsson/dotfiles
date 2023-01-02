set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdtree'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim' 
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" PYTHON
set t_Co=256
syntax on
set background=dark
colorscheme onedark 

set foldmethod=indent

set foldlevel=99

nnoremap <space> za

au BufNewFile, ButRead *.py
     \ set tabstop=4
     \ set softtabstop=4
     \ set shiftwidth=4
     \ set textwidth=79
     \ set exapndtab
     \ set autoindent
     \ set fileformat=unix
let g:ale_linters = {'python': ['flake8']}
set number

" MARKDOWN

function OpenMarkdownPreview (url)
  execute "silent ! firefox --new-window " . a:url
endfunction
let g:mkdp_browserfunc = 'OpenMarkdownPreview'

" TMUX Navigation

let g:tmux_navigator_no_mappings = 1

noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
noremap <silent> <c-\> :<C-U>TmuxNavigatePrevious<cr>

