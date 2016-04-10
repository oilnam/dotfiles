syntax on

set tabstop=8 expandtab shiftwidth=4 softtabstop=4

" show line and column number
set ruler

" Always show status bar
set laststatus=2

set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Move between windows without having to press Ctrl-W
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Sane beg/end of line
map <C-a> ^
map <C-e> $

" Json syntax on
autocmd BufNewFile,BufRead *.json set ft=javascript 

" Show nested folder tree in explorer mode (:E)
let g:netrw_liststyle=3

" solarized options - background can be dark/light
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
