"" Colors
set termguicolors
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
set hidden
set visualbell " Disable annoying bell on tab/backspace
set shortmess+=c "Shorter message
set nu
" Default indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
" Auto complete
set completeopt+=preview
set completeopt+=menuone
set completeopt+=longest

"" PACKAGE MANAGER
"" Install: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"" run `:PluginInstall` to install packages
set nocompatible              " be improved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'           " required by pathogen
Plugin 'jceb/vim-orgmode'               " Org Mode
Plugin 'tpope/vim-speeddating'          " orgmode dependencies
Plugin 'Valloric/YouCompleteMe'         " auto complete
Plugin 'scrooloose/nerdtree'		" File Explorer
Plugin 'bitc/vim-bad-whitespace'	" Flag whitespace

Plugin 'https://github.com/adelarsq/vim-matchit'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'

"" RUST
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'CraneStation/cranelift.vim'

call vundle#end()            " required
filetype plugin indent on    " required

""" Plugins
nmap <F5> :TagbarToggle<CR>
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:gutentags_cache_dir = '~/.cache/gutentags'
let g:airline#extensions#tagbar#enabled = 1
set statusline+=%{gutentags#statusline()}
let g:airline_theme='atomic'
"let g:gutentags_project_root = ['Makefile']

""" Rust
let g:racer_cmd = "/home/dlacreme/.cargo/bin/racer"


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
