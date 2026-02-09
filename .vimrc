" Load pathogen if exists
runtime! bundle/pathogen/autoload/pathogen.vim
if exists('*pathogen#infect')
  call pathogen#infect()
endif

" Syntax highlighting
filetype plugin on
syntax on

" Optional theme
let g:solarized_termtrans = 1
silent! colorscheme solarized
set background=dark

" Settings
set autoindent
set backspace=indent,eol,start
set backupcopy=yes
set colorcolumn=+1
set cursorcolumn
set cursorline
set formatoptions=qrn
set hlsearch
set ignorecase
set incsearch
set linebreak
set nofoldenable
set nojoinspaces
set nowrap
set number
set relativenumber
set scrolloff=15
set shiftround
set shiftwidth=4
set shortmess=aoOtI
set smartcase
set spell
set spellcapcheck=
set spelllang=en_gb
set synmaxcol=1000
set textwidth=79
set viminfo='20,<1000,s1000

" Tabbing
set tabstop=4
set softtabstop=4
set expandtab

" Whitespace matching
highlight TrailingWhitespace ctermbg=black
call matchadd('TrailingWhitespace', '\s\+$')
highlight SpacesBeforeTab ctermbg=darkred
call matchadd('SpacesBeforeTab', ' \+\ze\t')

" Solarized tweaks
highlight Normal ctermbg=none
highlight MatchParen ctermbg=darkmagenta ctermfg=black

" Create/use undo dir
silent! call mkdir($HOME . "/.vim/undo", "p")
set undodir=~/.vim/undo//
set undofile

" Do not keep local backups
set nobackup
set noswapfile
set nowritebackup

" File sanitizer (Chris Down)
command FixFile :set fileencoding=utf-8 fileformat=unix nobomb | %s/\r$//   
