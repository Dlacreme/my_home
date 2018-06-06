scriptencoding utf-8
set fileencoding=utf-8
 
set nocompatible
syntax on
set tabstop=4
set softtabstop=8
set shiftwidth=4
set autoindent
 
filetype plugin on
filetype indent on
 
set t_Co=256
colorscheme busybee
 
"set list
"set listchars=tab:»\
set number
set showcmd
set mouse=a
set cursorline
set nobackup
set nowritebackup
set noswapfile
 
highlight ExtraWhitespaces  ctermbg=RED guibg=#A00000
highlight ExtraCaractere    ctermbg=124 guibg=#A00000
 
function Handle_Spaces()
  match ExtraWhitespaces /\s\+$/
  "2match ExtraCaractere  /\%81v.\+/
endfunction
 
au BufNewFile {*.{c,cpp}} call Epi_CHeader_Insert()
au BufNewFile {*.{h,hh,hpp}} call Epi_CHHeader_Insert()
au BufNewFile {Makefile} call Epi_Makefile_Insert()
au BufNewFile {*.pl} call Header_Perl_Insert()
au BufNewFile {*.sh} call Header_Shell_Insert()
au BufWritePre {*.{c,cpp,h,hh,hpp},Makefile} call UpdateHeaderDate()
au BufWinEnter,BufNew {*.{c,cpp,h,hh,hpp},Makefile} call Handle_Spaces()
 
map <F3> <esc>ggvG=
map <F4> <esc>:set relativenumber
map <F5> <esc>:set number

runtime ftplugin/man.vim




"set nocompatible
"syntax on
"set number
"set smartindent
"set shiftround
"set ruler
"set showmode
"set tabstop=4
"set expandtab
"set shiftwidth=4
"set showcmd
"set autoindent
"colorscheme Mustang_Vim_Colorscheme_by_hcalves
"set t_Co=256
