" Make vim IMproved
set nocompatible
filetype plugin on
runtime macros/matchit.vim

" Highlight search results
set hlsearch

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" Language specific plugins
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'hallison/vim-rdoc'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'lervag/vimtex'
Plugin 'mustache/vim-mustache-handlebars'

"" Others
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/tpope-vim-abolish'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jpalardy/vim-slime'

" All Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

syntax enable
set background=dark
colorscheme solarized

highlight Normal ctermbg=none

" Enable autoindentation
set autoindent

" Turn on line numbers
set nu

" Set column for 80 character limit per line
set colorcolumn=81
" Set the color to one of the terminal theme colors
highlight ColorColumn ctermbg=1

" Crosshairs for cursor
set cursorline
"set cursorcolumn

" Showing whitespace characters
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" Currently only showing hard tab and trailing spaces
set listchars=tab:>-,trail:~
set list

" Use unix line endings
set ff=unix

let g:vim_markdown_folding_disabled=1
"let g:loaded_youcompleteme = 1 " Disable YCM

" Map K to split lines, rather than use for help
map K i<Enter><Esc>

map <Space> i<Space><Esc>

" Increase size of ex command line history
set history=200

" Sets incremental search result highlighting
set incsearch

" Remove highlight on Ctrl-l
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Setup for vim-slime with tmux
let g:slime_target="tmux"

""" Plugin options
"" vim-markdown
" Don't fold sections in markedown files by default
let g:vim_markdown_folding_disabled=1
"" vim-erlang
" Don't compile on saving erlang file every time
let g:erlang_show_errors=0
