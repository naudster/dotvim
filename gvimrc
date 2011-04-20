
" Clipboard cut/paste/select
set clipboard+=unnamed " share windows clipboard

"Display
"set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
"set list " this will show tabs as ^I
" Show $ at end of line and trailing space as ~
"set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
"set lcs=
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.



"Text Formatting/Layout 
"set completeopt= " don't use a pop up menu for completions
"set expandtab " no real tabs please!
set formatoptions=rq " Automatically insert comment leader on return,
                      " and let gq format comments
set ignorecase " case insensitive by default
set infercase " case inferred by default
"set nowrap " do not wrap line
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set smartcase " if there are caps, go case-sensitive
set shiftwidth=4 " auto-indent amount when using cindent,
                  " >>, << and stuff like that
set softtabstop=4 " when hitting tab or backspace, how many spaces
                   "should a tab be (see expandtab)
set tabstop=8 " real tabs should be 8, and they will show with
               " set list on



" Folding {
set foldenable " Turn on folding
set foldmarker={,} " Fold C style code (only use this as default
                    " if you use a high foldlevel)
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still
                  " fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements
                                                  " open folds
function SimpleFoldText() " {
    return getline(v:foldstart).' '
endfunction " }
set foldtext=SimpleFoldText() " Custom fold text function
                               " (cleaner than default)




" This is from http://biodegradablegeek.com/2007/12/using-vim-as-a-complete-ruby-on-rails-ide/

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
 

set cf  " Enable error files & error jumping.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set timeoutlen=500  " Time to wait after ESC (default causes an annoying delay)

" Formatting (some of these are for coding in C and C++)
"set bs=2  " Backspace over everything in insert mode
"set shiftwidth=2  " Tabs under smart indent
"set nocp incsearch
"set cinoptions=:0,p0,t0
"set cinwords=if,else,while,do,for,switch,case
"set formatoptions=tcqr
"set cindent
 

 
" gvim specific
"set mousehide  " Hide mouse after chars typed
"set mouse=a  " Mouse in all modes




" from http://genotrance.wordpress.com/2008/02/04/my-vim-customization/
" Turn on menu and tabs
set guioptions=emTt
set showtabline=2

" Tab shortcuts (like firefox)
:nmap <C-S-tab> :tabprevious<cr>
:nmap <C-tab> :tabnext<cr>
:imap <C-S-tab> <ESC>:tabprevious<cr>i
:imap <C-tab> <ESC>:tabnext<cr>i
:nmap <C-t> :tabnew<cr>
:imap <C-t> <ESC>:tabnew<cr>i
:map <C-w> :tabclose<cr>

" tab settings
"set tabstop=2
"set shiftwidth=2
"set expandtab
"set softtabstop=2
"set autoindent

" VtreeExplorer plugin
let treeExplVertical=1
let treeExplWinSize=35
let treeExplDirSort=1
let treeExplNoList=1
:nmap <F2> :VSTreeExplore<cr>


colorscheme paper


