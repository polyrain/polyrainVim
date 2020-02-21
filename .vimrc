set ruler
set noshowmode
set number
set softtabstop=4
set nohlsearch
set backspace=indent,eol,start
set background=dark
set shiftwidth=4
set tabstop=8
set colorcolumn=80
highlight ColorColumn ctermbg=magenta
set showcmd
set expandtab
set mouse=a
if has("nvim")
  set termguicolors
endif
" Indenting based on previous line "
set autoindent
" Indenting based on C syntax "
set smartindent
" Intelligent comments "
set comments=sl:/*,mb:\ *,elx:\ */

syntax on
autocmd FileType vim let b:vcm_tab_complete = 'vim'

if !has('gui_running')
  set t_Co=256
endif
set laststatus=2
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'itchyny/lightline.vim'
Plug 'sts10/vim-pink-moon'
Plug 'https://tpope.io/vim/commentary.git'
Plug 'w0rp/ale'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://tpope.io/vim/eunuch.git'
Plug 'valloric/youcompleteme'
Plug 'https://github.com/Yggdroot/indentLine.git'
" Initialize plugin system
call plug#end()

colorscheme gruvbox


let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
 let g:indentLine_color_term = 100

map <C-o> :NERDTreeToggle<CR>
nnoremap H gT
nnoremap L gt
