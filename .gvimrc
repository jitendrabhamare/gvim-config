" gvim config file.
" Author: Jitendra Bhamare

" --------------------------- colors -------------------------------------
syntax enable                       " Enable syntax processing
"let g:solarized_termcolors=256     " For vim/terminal to support 256 colors
"set background=dark 
"colorscheme solarized              " Dark background (need to download solarized.vim from solarized github)
"colorscheme desert                 " Another my favorite colorscheme (this is in-built)
colorscheme atom-dark               " Inspired by Atom's default dark theme
"colorscheme atom-dark-256           " Inspired by Atom's default dark theme
set guifont=Monospace\ 13
"set guifont=Monaco\ 11
"set guifont=DejaVu\ Sans\ Mono\ 14

" --------------------------- spaces and tabs ----------------------------
" Following options ensures that source code looks the same on every machine
set tabstop=4       " When vim opens a file and read a <tab> char, it uses these many visual spaces
set softtabstop=4   " Number of spaces in tab when editing
set shiftwidth=4    " When indenting with '>', use 4 spaces width
set expandtab       " Turns <tab> into spaces, i.e. <tab> becomes shortcut for 'insert 4 spaces'
filetype indent on  " Load filetype-specific indent files. For example, ~/.vim/indent/python.vim gets loaded every time I open a *.py
set autoindent      " Enable autoindent. Indent automatically when you press enter in insert mode.
set nowrap          "To display long lines as just one line (i.e. you have to scroll horizontally to see the entire line).
set textwidth=0     "Turning off splitting lines

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

" --------------------------- Folding -------------------------------------
set foldenable          " Don't fold files by default on open
set foldlevelstart=10   " Starting fold lever for opening a new buffer. When 0, all folds closed. When 99, all folds always open
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " Fold based on indent level. Good for Python
" Space open/closes folds
nnoremap <space> za

" --------------------------- Movement/Line Shortcuts------------------------
" Move vertically by visaul line. The keys j,k won't skip over wrapped around lines
nnoremap j gj
nnoremap k gk
" Hightlight last inserted Text
nnoremap gV `[v`]

" --------------------------- Leader Shortcuts -----------------------------------
" Creates alias shortcuts. For example, ',<space>' is used for :noh
let mapleader=","   " Leader is comma
" Global copy/paste to external clipboard
" Note: vnoremap works in visual mode
vnoremap <leader>y "+y
nnoremap <leader>p "+gP
" Deactivate highlights
nnoremap <leader><space> :nohlsearch<CR> 
" Toggle gundo. Displaying that undo tree in graphical form. 
nnoremap <leader>u :GundoToggle<CR>
" Save session. You can reopen it with vim -S. 
nnoremap <leader>s :mksession<CR>

" --------------------------- System Verilog Syntax ----------------------------
"au BufNewFile,BufRead *.sv,*.svh,*.v so ~/.vim/syntax/verilog_systemverilog.vim
autocmd BufNewFile,BufRead *.v,*.sv,*.vs set syntax=verilog
