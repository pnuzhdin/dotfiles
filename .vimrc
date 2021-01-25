" Language
    language messages en_US.UTF-8
    set langmenu=en_US.UTF-8
    set encoding=utf-8                                                          
    set fileencodings=utf-8

" Vundle
    set nocompatible               " be iMproved
    filetype off                   " required!
    
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'

    " My Bundles here:
    "
    " original repos on github
    Bundle 'tpope/vim-fugitive'
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'nanotech/jellybeans.vim'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'bling/vim-airline'
    Bundle 'mbbill/undotree'
    Bundle 'majutsushi/tagbar'
    Bundle 'airblade/vim-gitgutter'
    Bundle 'Townk/vim-autoclose'
    Bundle 'kien/ctrlp.vim'

    Plugin 'editorconfig/editorconfig-vim'

    call vundle#end()

    let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Color theme
    color jellybeans

" Interface
    set number
    set colorcolumn=80
    set linebreak
    " set smarttab autoindent
    set expandtab
    set shiftwidth=4
    set tabstop=4
    set softtabstop=4
    set linespace=1
    set cursorline
    set t_Co=256
    set guicursor=
    set splitbelow
    set splitright
    set shortmess+=I
    set mouseshape=s:udsizing,m:no
    set mousehide
    set mouse=a
    set hidden
    set guifont=Consolas:h11:cRUSSIAN

" Beep
    set visualbell
    set t_vb=

" Tab & line ending
    if has('multi_byte')
        if version >= 700
            set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
        else
            set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:_
        endif
    endif

" Line breaking
    if has("linebreak")
        let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
    endif

    set laststatus=2
    set foldcolumn=0
    set foldmethod=syntax
    set foldnestmax=10
    set foldenable!
    set foldlevel=1
    set fillchars="fold: "

" Search
    set incsearch
    set hlsearch

" Environment
    set history=1000
    set backupdir=~/.vim/back/
    set directory=~/.vim/swp/
    set viminfo='10,\"100,:20,%,n~/.viminfo
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

    set tags=tags;/

    set backspace=2

    set synmaxcol=512
    set ttyfast
    set ttyscroll=3
    set lazyredraw

filetype plugin indent on     " required!
syntax on
syntax sync minlines=256

hi! link ColorColumn CursorLine
