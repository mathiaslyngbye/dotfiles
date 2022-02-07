" --- Layout ------------------------------------------------------------------
set number                  " Enable line numbers
syntax on                   " Enable syntax highlighting
set background=dark         " Set default colors
set colorcolumn=80          " Highlight column 80
set laststatus=2            " Enable status bar always2
set scrolloff=3             " Pad top and bottom with lines
colo torte

" --- Indentation and text wrap -----------------------------------------------
set tabstop=4               " Tab is # spaces
set shiftwidth=4            " The # of spaces for indenting
set softtabstop=4           " Tab key results in # spaces
set expandtab               " Expand tabs to spaces
set nowrap                  " Don't wrap text
set autoindent              " Indent line according to previous line
set smartindent             " Indents according to syntax                             

" --- Backup and swap files ---------------------------------------------------
set nobackup
set nowritebackup
set noswapfile

" --- history / file handling -------------------------------------------------
set history=999             " Increase history (default 20)
set undolevels=999          " Increase undos (default 100)
set autoread                " Reload files if changed externally                       

" --- Navigation --------------------------------------------------------------
set mouse=a                 " Enable click to set cursor (sue me!)
set ttymouse=sgr            " Enable scrolling

" --- Clipboard ---------------------------------------------------------------
"set clipboard=unnamedplus  " Use system clipboard (requires vim-gtk)

" --- Misc. -------------------------------------------------------------------
autocmd FileType make setlocal noexpandtab softtabstop=0
set timeout timeoutlen=5000 ttimeoutlen=100

" --- speedup ---------------------------------------------------------------------
set ttyfast                 " Make laggy connections work faster
set lazyredraw
