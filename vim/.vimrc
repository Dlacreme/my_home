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
set hlsearch
set hidden
"set visualbell " Disable annoying bell on tab/backspace
set belloff=esc
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
" Fix flash on kitty
let &t_ut=''

"" PACKAGE MANAGER
" run `:PluginInstall` to install packages
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'preservim/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/denite.nvim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'mhinz/vim-mix-format'
Plugin 'iamcco/coc-angular'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'junegunn/fzf'
" Plugin 'Quramy/vim-js-pretty-template'

call vundle#end()
filetype plugin indent on

"" Keybinding
nnoremap <silent> <C-x> :nohl<CR><C-l>
"" Install xclip command line manually
vmap <F8> :!xclip -f -sel clip<CR>
map <F9>  mz:-1r !xclip -o -sel clip<CR>`z

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ycm_confirm_extra_conf = 0

"" Crystal
let g:crystal_auto_format = 1

" Elixir
let g:mix_format_on_save = 1

" Deoplete see :help deoplete-options
call deoplete#custom#option({
      \'auto_complete_delay': 200,
      \'max_list': 100,
      \'on_insert_enter': v:true,
      \'on_text_changed_i': v:true,
      \})
let g:deoplete#enable_at_startup = 1

" NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDTreeWinSize=35
let g:Tlist_WinWidth=35

let g:NERDTreeFileExtensionHighlightFullName = 1

" let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
" let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" Angular
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
map <C-s> :make<CR>
"autocmd FileType typescript JsPreTmpl html
"autocmd FileType typescript syn clear foldBraces

""" REMINDER
" GREP -> CtrSF "search"
