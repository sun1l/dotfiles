" ---------------------------------------- "
" General Settings
" ---------------------------------------- "

" enable mouse support
set mouse=a

" sets how many lines of history VIM has to remember
set history=1000

" enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" set to auto read when a file is changed from the outside
set autoread

" set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" use Unix as the standard file type
set ffs=unix,dos,mac

" show list instead of just completing
set wildmenu

" command <Tab> completion, list matches, then longest common part, then all.
set wildmode=list:longest,full

" when completing by tag, show the whole tag, not just the function name
set showfulltag

" allow the cursor to go in to invalid places
" set virtualedit=all

" ---------------------------------------- "
" User Interface
" ---------------------------------------- "

" display the current mode
set showmode

" enable syntax highlighting
syntax enable

" use spaces instead of tabs
set expandtab

" be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" auto indent
set ai

" smart indent
set si

" don't wrap lines
set nowrap

" backspace for dummys
set backspace=indent,eol,start

" no extra spaces between rows
set linespace=0

" line numbers on
" set nu

" show matching brackets when text indicator is over them
set showmatch

" how many tenths of a second to blink when matching brackets
set mat=5

" auto fold code
set foldenable

" highlight problematic whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
hi SpecialKey ctermbg=red ctermfg=red guibg=red guifg=red

" always show the status line
set laststatus=2

" format the status line
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
"set cursorline

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

" turn backup off, since most stuff is in SVN, git et.c anyway...
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

" returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
        return ''
endfunction


