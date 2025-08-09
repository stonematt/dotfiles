" Escape insert mode using 'jk'
inoremap jk <ESC>

" set leader key to space
let mapleader = " "



" Basic settings
set tabstop=4             " Tabs equal to 4 spaces
set shiftwidth=4          " Auto-indent width
set expandtab             " Convert tabs to spaces
set ignorecase            " Ignore case in search
set smartcase             " Case-sensitive if uppercase used
set cursorline            " Highlight the current line
" set mouse=a               " Enable mouse support
"set clipboard=unnamedplus " Use system clipboard
set undofile              " Persistent undo
" 
" Key mappings using space as leader
" nnoremap <leader>p :set paste<CR> " Enable paste mode with <leader>p (space+p)
" move vertically by visual line
noremap j gj
noremap k gk
" highlight last inserted text
nnoremap gV `[v`]
" 
" 
" Split window mappings
nnoremap <leader><Bar> :vsplit<CR>  " Use <leader><pipe> for vertical split
nnoremap <leader>- :split<CR>   " Use <leader>- for horizontal split
" 
" Window management behavior
" set splitright  " Open vertical splits to the right
" set splitbelow  " Open horizontal splits below

" Wildmenu and command enhancements
set wildmenu
set wildmode=longest,list,full

" Plugin-free usability improvements
syntax enable                    " Enable syntax highlighting
filetype plugin indent on         " Enable filetype detection

" edit vimrc/bashrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>eb :vsp ~/.bashrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

