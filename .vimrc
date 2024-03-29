" Enable filetype plugins
filetype plugin on
filetype indent on

" Map F8 to disable auto indenting for current file
" @see http://vim.wikia.com/wiki/How_to_stop_auto_indenting
nnoremap <F8> :setl noai nocin nosi inde=<CR>

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions+=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ Column:\ %c

" Enable line numbering
set number

" Set whitespace character visibility
set list
set list listchars=tab:>-,trail:.,extends:>,eol:¶

" Set right margin ("color column")
set cc=50,72

" Add underline to the current line
set cursorline

" Push the file through sudo tee to the current filename (%)
" You trigger it by doing :w!!
cmap w!! %!sudo tee > /dev/null %
