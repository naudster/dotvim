" pathogen plugin
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

" Standard stuff, only if compatible with this vim
if has("autocmd")
    " Enable filetype detection
    filetype plugin indent on
    set fileformats=unix,dos,mac " support all three, in this order

    " Restore cursor position
    autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
endif
if &t_Co > 2 || has("gui_running")
    " Enable syntax highlighting
    syntax on
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    "Ruby 
    " ruby standard 2 spaces, always
    au BufRead,BufNewFile *.rb,*.erb,*.rhtml,*.yaml set shiftwidth=2 
    au BufRead,BufNewFile *.rb,*.erb,*.rhtml,*.yaml set softtabstop=2 

    " F12 = autoindent/format entire file
    :nmap <F12> gg=G

    source $VIMRUNTIME/mswin.vim
    behave mswin

endif

" For textobject-ruby plugin
runtime macros/matchit.vim

" For custom snippets
runtime bundle/snipmate-snippets/support_functions.vim

" Gundo. Need vim >= 7.3
nnoremap <F5> :GundoToggle<CR>

" Toggle spell checking on and off with `,s`
" see http://vimcasts.org/episodes/spell-checking/
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>

" Set spelling region to AU
set spelllang=en_au


"Backups
set backup " make backup files
set backupdir=~/.vim/backup " where to put backup files
set directory=~/.vim/tmp " directory to place swap files in

