"" Colors
"set termguicolors
"set t_Co=256
"set term=xterm-256color
colorscheme horizon

"" Config
syntax on
scriptencoding utf-8
set fileencoding=utf-8
set number
set showcmd
set mouse=a
set cursorline
set nobackup
set nowritebackup
set noswapfile


"" PACKAGE MANAGER
"" Install: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"" run `:PluginInstall` to install packages
set nocompatible              " be improved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " required by pathogen
" Global
Plugin 'Valloric/YouCompleteMe'         " auto complete
Plugin 'scrooloose/nerdtree'

" Python
Plugin 'bitc/vim-bad-whitespace'
Plugin 'jmcantrell/vim-virtualenv'
" Org
Plugin 'jceb/vim-orgmode'               " Org Mode
Plugin 'tpope/vim-speeddating'          " orgmode dependencies

call vundle#end()            " required
filetype plugin indent on    " required


"" Keybinding
""

" Install xclip command line manually
vmap <F8> :!xclip -f -sel clip<CR>
map <F9>  mz:-1r !xclip -o -sel clip<CR>`z

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

