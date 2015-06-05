set nocompatible		            " doesn't seem strictly necessary here, but bsts
filetype off			              " we'll turn it back on after other vimrc initializations

" vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'Valloric/YouCompleteMe'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Bundles
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'    
Bundle 'bling/vim-airline'
Bundle 'digitaltoad/vim-jade'


" /vundle

set t_Co=256
set term=xterm-256color
set termencoding=utf-8

filetype plugin indent on	      " turn filetype detection back on

let mapleader = ","		          " set leader prefix

color wombat		                " set color from ~/.vim/colors/

set cursorline			            " highlight current line
set expandtab			              " convert tabs to spaces
set tabstop=2                   " <tab> equals this many columns.  remember tabs are converted to spaces with expandtab
set shiftwidth=2                " how many spaces to shift with << and >>
set modelines=0                 " do not read any mode lines
set clipboard=unnamed           " integrate with the system clipboard
set synmaxcol=128               " don't syntax highlight past this column (vim is slow with long lines and highlighting)
set ttyscroll=10                " redraw if scrolling more than 10 lines (what does this mean exactly?)
set encoding=utf-8
set nowrap                      " don't wrap long lines
set number                      " line numbers
set nobackup                    " don't creat '~' backup files
set nowritebackup
set hlsearch                    " highlight search term
set incsearch                   " enable incremental search
set ignorecase                  " ignore case when searching, except...
set smartcase                   " ... when smartcase is on.  if search term uses caps, then don't ignore case
set ruler                       " always show current position (needed with powerline?)
set scrolloff=4                 " keep 4 lines above and below cursor
set colorcolumn=80              " highlight 80th column

set autoindent                  " indent to current context on newline.  docs indicate smartindent should also be enabled
set smartindent                 " see previous comment

set laststatus=2                " needed for powerline|airline

set splitbelow
set splitright

syntax enable                   " enable syntax highlighting; preferred over 'syntax on'

" NERDTree stuff
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['tmp']

let g:airline_powerline_fonts = 1
"let g:airline_theme='wombat'

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"


let g:vim_markdown_folding_disabled=1

" key maps
nmap <leader>fef ggVG=          " format entire file
imap jj <ESC>                   " use jj to escape from insert mode

"au BufNewFile * set noeol
"au BufRead,BufNewFile *.py set filetype=python
"au BufRead,BufNewFile *.js set filetype=javascript
"au BufNewFile,BufReadPost *.jade set filetype=jade

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
