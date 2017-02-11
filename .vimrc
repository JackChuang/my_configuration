" Jack
" run :PluginInstall in vim

" auto load all plugins in vim bundle
" execute pathogen#infect()

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
"set guifont=Inconsolata\ for\ Powerline:h15
"set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8

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

" 'Yggdroot/indentLine'
let g:indentLine_enabled = 1
let g:indentLine_setConceal = 0
"let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
" ¦, ┆, or │ 
let g:indentLine_char = '¦'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

" for Plugin 'tmhedberg/SimpylFold' " hotkey: [za], [zc]&[zo]
" don't use foldmethod=syntax
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
set foldmethod=indent
set foldlevel=99

" Indent Guides [,ig]
" my setup has some issue, and because of transparent, some of colors don't work!!
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1 
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=lightgrey
hi IndentGuidesOdd  ctermbg=7
hi IndentGuidesEven ctermbg=6
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=grey
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=lightgrey
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"hi IndentGuidesOdd guibg=red ctermbg=3
"hi IndentGuidesEven guibg=green ctermbg=4

" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
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
Plugin 'Yggdroot/indentLine'
call vundle#end()            " required
filetype plugin indent on    " required

" For my foot switch which is bond to F12
imap <F12> <ESC> j
imap <C-F12> <ESC> k 
cmap <F12> <ESC>
nmap <F12> j
nmap <C-F12> k
