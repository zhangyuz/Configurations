set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'leran0222/zmapping'
Plugin 'majutsushi/tagbar'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" my plugin
Plugin 'https://github.com/tpope/vim-repeat.git'
"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'sjl/gundo.vim'
"Plugin 'Valloric/YouCompleteMe'
" Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'taglist.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tell-k/vim-autopep8'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Yuz config HERE
filetype plugin indent on
set hlsearch
set laststatus=2
" support 256 bit color
set t_Co=256
set encoding=utf-8
map <C-up> : tabp<CR>
map <C-down> : tabn<CR>
set hlsearch
set showmatch
set matchtime=5
set incsearch
set ignorecase
set smartcase

set ambiwidth=double

set cul
set number
set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set ruler
set fenc=utf-8

" indentLine
let g:indentLine_char='|'
let g:indentLine_enabled=1
let g:indentLine_setColors = 0

" airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'bubblegum'


function! AirlineInit()
"  let g:airline_section_a = airline#section#create(['mode', '>', 'branch'])
"  let g:airline_section_b = airline#section#create_left(['ffenc','file'])
  let g:airline_section_c = airline#section#create(['%{Tlist_Get_Tagname_By_Line()}'])
  let g:airline_section_warning = airline#section#create('')
endfunction
autocmd User AirlineAfterInit call AirlineInit()

" vim solarized
syntax enable
set background=dark
colorscheme solarized


" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_python_exec = '/usr/bin/python3'

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" nerdtree
" open nerdtree automaticly
" autocmd vimenter * NERDTree
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif


" Taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Left_Window = 1
let Tlist_Auto_Open = 0
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Sort_Type = 'name'

if has("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

if filereadable("cscope.out")
cs add cscope.out
elseif $CSCOPE_DB != ""
cs add $CSOPE_DB
endif
set csverb
set cscopetag
set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif

set noswapfile

"Rainbow Parentheses 
au VimEnter * RainbowParenthesesToggle      " Toggle it on/off
au Syntax * RainbowParenthesesLoadRound     " (), the default when toggling
au Syntax * RainbowParenthesesLoadSquare    " []
au Syntax * RainbowParenthesesLoadBrace     " {}
au Syntax * RainbowParenthesesLoadChevrons  " <>

" Gradle
au BufNewFile,BufRead *.gradle setf groovy


" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" autopep8
let g:autopep8_disable_show_diff=1
autocmd FileType python map <buffer> <F3> :call Autopep8()<CR>
