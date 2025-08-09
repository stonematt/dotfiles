" Matt Stone

" Plugin Manager {{{
" install plug-vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" install plugins
call plug#begin('~/.vim/plugged')
" colors
Plug 'sjl/badwolf'
Plug 'scottymoon/vim-twilight'
Plug 'zefei/simple-dark'

" functional stuff
Plug 'preservim/nerdtree'

call plug#end()
"}}}
"Colors {{{
"colorscheme badwolf         " awesome colorscheme
" Make the gutters darker than the background.
"let g:badwolf_darkgutter = 1
colorscheme twilight         " awesome colorscheme
syntax enable           " enable syntax processing

" }}}
" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set modelines=1
set autoindent
filetype indent on      " load filetype-specific indent files
" }}}
" UI Config {{{
"set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line

set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
" }}}
" Search Settings {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight with ,space
nnoremap <leader><space> :nohlsearch<CR>

set rtp+=/opt/homebrew/opt/fzf " use fuzzyfind 

" }}}
" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" }}}
" Movement {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" }}}
" Leader Shortcuts {{{
" remap escape key
inoremap jk <ESC>       " the escape key is too far away
let mapleader=" "       " leader is comma
" super undo - shows a tree
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" edit vimrc/bashrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>eb :vsp ~/.bashrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" }}}
" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" vim:foldmethod=marker:foldlevel=0
