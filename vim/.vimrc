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
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'lervag/vimtex'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'stephpy/vim-yaml'

"" Others
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/tpope-vim-abolish'
Plugin 'tpope/vim-speeddating'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jpalardy/vim-slime'
Plugin 'chrisbra/csv.vim'

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
highlight ColorColumn ctermbg=Red

" Crosshairs for cursor
set cursorline
"set cursorcolumn

" Don't show whitespace characters (uncomment these two lines to change)
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list

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

" Make backspace behave in an expected way
set backspace=indent,eol,start

" Plugin options

"" vim-markdown
""" Don't fold sections in markedown files by default
let g:vim_markdown_folding_disabled=1

"" vim-slime
""" Setup for vim-slime with tmux
let g:slime_target="tmux"

autocmd BufNewFile,BufRead *.exs setf elixir
