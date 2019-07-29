" Jitendra Bhamare

" --------------------------- colors -------------------------------------
syntax enable   " Enable syntax processing
let g:solarized_termcolors=256  " For vim/terminal to support 256 colors
let g:solarized_termtrans=1
set background=dark 
colorscheme solarized   " Awesome colorscheme with dark background (Need to download solarized.vim from solarized github and copy it your /usr/share/vim/vim80/colors/ directory)
"colorscheme desert     " Another my favorite colorscheme (this is in-built)
"set guifont=Monospace\ 11

" --------------------------- spaces and tabs ----------------------------
" Following options ensures that source code looks the same on every machine
set tabstop=4   " When vim opens a file and read a <tab> char, it uses these many visual spaces
set softtabstop=4   " Number of spaces in tab when editing
set shiftwidth=4  " When indenting with '>', use 4 spaces width
set expandtab   " Turns <tab> into spaces, i.e. <tab> becomes shortcut for 'insert 4 spaces'
filetype indent on  " Load filetype-specific indent files. For example, ~/.vim/indent/python.vim gets loaded every time I open a *.py
set autoindent  " Enable autoindent. Indent automatically when you press enter in insert mode.


" --------------------------- UI Layout -----------------------------------
set number      " Show line numbers
set showcmd     " Show command in bottom bar
set cursorline  " Sightlight current line
set wildmenu    " Visual autocomplete for command menu. For example, run ':e ~/.vim<tab>' 
set lazyredraw  " Redraw (refesh) only when you need to. Use Ctrl+L for manual redraw. Helpful in the middle of macros
set showmatch   " Highlight matching parenthesis [{()}]

" --------------------------- Searching -----------------------------------
set ignorecase  " Ignore case when searching
set incsearch   " Search as character are entered
set hlsearch    " Highlight matches

" --------------------------- History/Reload ------------------------------
set history=999     " Increase history (default = 20)
set undolevels=999  " Increase undo (default=100)
set autoread        " reload files if changed externally


" --------------------------- Folding -------------------------------------
set foldenable  " Don't fold files by default on open
set foldlevelstart=10   " Starting fold lever for opening a new buffer. When 0, all folds closed. When 99, all folds always open
set foldnestmax=10  " 10 nested fold max
set foldmethod=indent   " Fold based on indent level. Good for Python
" Space open/closes folds
nnoremap <space> za

" --------------------------- Movement/Line Shortcuts------------------------
" Move vertically by visaul line. The keys j,k won't skip over wrapped around lines
nnoremap j gj
nnoremap k gk
" Hightlight last inserted Text
nnoremap gV `[v`]
" Global copy/paste to external clipboard
" Note: vnoremap works in visual mode
vnoremap <leader>y "+y
nnoremap <leader>p "+gP


" --------------------------- Leader Shortcuts -----------------------------------
" Creates alias shortcuts. For example, ',<space>' is used for :noh
let mapleader=","   " Leader is comma
" Deactivate highlights
nnoremap <leader><space> :nohlsearch<CR> 
" Toggle gundo. Displaying that undo tree in graphical form. 
nnoremap <leader>u :GundoToggle<CR>
" Save session. You can reopen it with vim -S. 
nnoremap <leader>s :mksession<CR>
