"" Colors
set termguicolors
colorscheme coldhorizon

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix
" Auto complete
set completeopt+=preview
set completeopt+=menuone
set completeopt+=longest

"" PACKAGE MANAGER
" run `:PluginInstall` to install packages
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'elixir-editors/vim-elixir'
Plugin 'mhinz/vim-mix-format'
call vundle#end()
filetype plugin indent on

"" Keybinding
"" Install xclip command line manually
vmap <F8> :!xclip -f -sel clip<CR>
map <F9>  mz:-1r !xclip -o -sel clip<CR>`z

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ycm_confirm_extra_conf = 0
let g:mix_format_on_save = 1

"" Crystal
let g:crystal_auto_format = 1

" NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'

