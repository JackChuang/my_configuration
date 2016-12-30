"Jack
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

  " highlight
  set hlsearch
  " jump immediately when searching
  set incsearch
  " auto indence
  "set cindent
  " cursor underline
  set cursorline 

  "auto indent for different file formates
filetype indent on

  " size of a hard tabstop
 set tabstop=4
  " " size of an "indent"
 set shiftwidth=4
  " " a combination of spaces and tabs are used to simulate tab stops at a
  " width other than the (hard)tabstop
 set softtabstop=4
  " " make "tab" insert indents instead of tabs at the beginning of a line
 set smarttab
  " " always uses spaces instead of tab characters
 set expandtab


" supermartian's vimrc
"

" Common settings
syntax on
set background=dark
set nocst
"set nu
set expandtab
set fileformat=unix
set autoindent
set shiftwidth=4
set tabstop=4
set fileencodings=ucs-bom,utf-8,chinese
set encoding=utf-8
let mapleader=','

" Autocomplete settings
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Jump to the next line of the editor, not the __LINE__
nnoremap j gj
nnoremap k gk

" Paste
set pastetoggle=<F2>

" list
"set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Copy to CLIPBOARD, and use 'y' to copy to the PRIMARY
map <leader>y "+y
map <leader>p "+p

" Powerline settings
set laststatus=2
set rtp+=~/PowerLine/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

" Taglist 
map <F4> :TlistToggle<CR>
imap <F4> <ESC>:TlistToggle<CR>

" NerdCommentor
map <F5> <Leader>cs
imap <F5> <ESC><Leader>cs
map <F6> <Leader>cu
imap <F6> <ESC><Leader>cu

" NerdTree
let NERDTreeIgnore=['cscope.in.out', 'cscope.out', 'cscope.files', 'cscope.po.out', 'tags', '\.swp$']
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

" EasyPeasy
let g:tag_directory = "~/.vim/tags/"
let g:tag_extension = ".tags"
let g:include_paths = "/usr/include/,/usr/local/include/"

" Tab switching
map <Leader><Right> :tabn<CR>
map <Leader><Left> :tabp<CR>
map <Leader><Down> :tabc<CR>
map <Leader><Up> :tabe<CR>

" Clear tailing white space
map <F8> :%s/ *$//g<CR>

" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mutewinter/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/matrix.vim--Yang'
Plugin 'nelstrom/vim-mac-classic-theme'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/cscope_macros.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'walm/jshint.vim'
Plugin 'vim-scripts/EasyPeasy'
Plugin 'aperezdc/vim-template'
Plugin 'othree/xml.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'katonori/binedit.vim'
Plugin 'vim-scripts/DrawIt'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
call vundle#end()            " required
filetype plugin indent on    " required

" For my foot switch which is bond to F12
imap <F12> <ESC> j
imap <C-F12> <ESC> k 
cmap <F12> <ESC>
nmap <F12> j
nmap <C-F12> k
