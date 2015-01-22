" ---------------------------------------- "
" General Settings
" ---------------------------------------- "

" Enable mouse support
set mouse=a

" Sets how many lines of history VIM has to remember
set history=1000

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" show list instead of just completing
set wildmenu

" command <Tab> completion, list matches, then longest common part, then all.
set wildmode=list:longest,full

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Allow the cursor to go in to invalid places
" set virtualedit=all

" ---------------------------------------- "
" User Interface
" ---------------------------------------- "

" display the current mode
set showmode

" Enable syntax highlighting
syntax enable

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Auto indent
set ai

" Smart indent
set si

" Don't wrap lines
set nowrap

" backspace for dummys
set backspace=indent,eol,start

" No extra spaces between rows
set linespace=0

" Line numbers on
" set nu

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=5

" auto fold code
set foldenable

" Highlight problematic whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
hi SpecialKey ctermbg=red ctermfg=red guibg=red guifg=red

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{getcwd()}/%<%f\ " current dir
set statusline+=%=%-14.(\ Line:\ %l,%c%V%)\ %p%% " Right aligned file

" ---------------------------------------- "
"  Colors and Fonts
" ---------------------------------------- "

" highlight bg color of current line
hi cursorline guibg=#333333

" highlight cursor
hi CursorColumn guibg=#333333

" highlight current line
set cursorline

" ---------------------------------------- "
"  Search
" ---------------------------------------- "

" find as you type search
set incsearch

" highlight search terms
set hlsearch

" case insensitive search
set ignorecase

" case sensitive when uc present
set smartcase

" ---------------------------------------- "
"  File options
"  --------------------------------------- "

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


" ---------------------------------------- "
" Tabs
" ---------------------------------------- "
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>

" ---------------------------------------- "
" PHP Syntax
" ---------------------------------------- "
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1

" ---------------------------------------- "
" Helper Function
" ---------------------------------------- "

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
        return ''
endfunction


