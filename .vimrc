"--- Layout --- "
set number          " Enable line numbers
syntax on           " Enable syntax highlighting
set background=dark " Set default colors
colo delek

" --- indentation and text wrap ---
set tabstop=4       " Tab is # spaces
set shiftwidth=4    " The # of spaces for indenting
set softtabstop=4   " Tab key results in # spaces
set expandtab       " Expand tabs to spaces
set nowrap          " Don't wrap text
set autoindent      " Indent line according to previous line
set smartindent     " Indents according to syntax

" --- backup and swap files --- 
set nobackup
set nowritebackup
set noswapfile

" --- history / file handling ---
set history=999     " Increase history (default 20)
set undolevels=999  " Increase undos (default 100)
set autoread        " Reload files if changed externallyi

" --- navigation ---
set mouse=a         " Enable click to set cursor (sue me!)
"set cursorline      " Highlight cursor line

" --- tty ---
set ttyfast         " make laggy connections work faster

" --- misc ---
autocmd FileType make setlocal noexpandtab softtabstop=0
