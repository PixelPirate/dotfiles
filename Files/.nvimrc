set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.nvim/plugged')
"Plug 'airblade/vim-gitgutter'
"Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'wting/rust.vim'
Plug 'bling/vim-airline'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer --omnisharp-completer' }
Plug 'hukl/Smyck-Color-Scheme'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'JazzCore/ctrlp-cmatcher', { 'do': 'export CFLAGS=-Qunused-arguments; export CPPFLAGS=-Qunused-arguments; ./install.sh' }
Plug 'cespare/vim-toml'
Plug 'ryanss/vim-hackernews'
Plug 'junegunn/vim-easy-align'
Plug 'reedes/vim-colors-pencil'
Plug 'majutsushi/tagbar'
Plug 'skwp/greplace.vim'
Plug 'simnalamburt/vim-mundo' " Fork of Gundo, which seems abandoned
Plug 'scrooloose/nerdcommenter'
Plug 'zah/nimrod.vim'
Plug 'Wombat'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'scrooloose/nerdtree'
Plug 'szw/vim-tags'
Plug 'sheerun/vim-polyglot'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'tomtom/quickfixsigns_vim'
"Plug 'john2x/flatui.vim'
call plug#end()
execute pathogen#infect()
filetype plugin indent on    " detect file type and load indents and plugins
syntax on                    " turn on syntax highlighting

set background=light
if &background == 'dark'
    colorscheme smyck           " syntax highlighting colours
    "colorscheme wombat
else
    "colorscheme flatui
    "let g:airline_theme = 'luna'
    colorscheme pencil
    set background=light
    let g:pencil_terminal_italics = 1
    let g:airline_theme = 'pencil'
    highlight IncSearch cterm=underline
    "set background=light
    "colorscheme solarized
endif

" Set cursor stlye, needs `export NVIM_TUI_ENABLE_CURSOR_SHAPE=1`
let &t_SI .= "\<Esc>[6 q"  " solid vertical line in insert mode
let &t_EI .= "\<Esc>[2 q"  " solid block in normal mode
" 1 or 0 -> blinking block
" 2 -> solid block
" 3 -> blinking underscore
" 4 -> solid underscore
" 5 -> blinking vertical bar
" 6 -> solid vertical bar

set autoread            " auto reload buffer when file modified externally
set clipboard=unnamed   " yank and paste using system clipboard
set encoding=utf-8      " default character encoding
set hidden              " do not unload buffers that get hidden
set noswapfile          " do not use swap file for buffers
set nowritebackup       " do not make backup before overwriting file

set laststatus=2        " always show the status line
set nowrap              " do not wrap text
set number              " show line numbers
"set scroll=1            " scroll up/down 1 line at a time
set scrolloff=3         " keep minimal number of lines above/below cursor
set sidescroll=1        " scroll sideways 1 charasters at a time
set sidescrolloff=3     " keep minimal number of lines at the sides of the cursor
"set scrolljump=5      " lines to scroll when cursor leaves screen
"set showcmd            " show command line at bottom of screen
                        " disabled because neovim-dot-app slows down with this
set splitright          " open vertical split right of current window
set visualbell          " use visual bell instead of beeping
set wildmenu            " tap auto-complete for commands
set wildmode=full       " Disable listing of all completition, only interactive bar
set wildignore=*.pyc    " stuff for auto-complete to ignore

set backspace=2         " make backspace behave normally
set expandtab           " insert taps as spaces
set shiftwidth=4        " number of spaces for auto indent and line shift
set cindent             " syntax-aware auto indent
set smarttab            " <BS> deletes a shiftwidth worth of space
set softtabstop=4       " number of spaces pressing <Tab> counts for
set tabstop=4           " number of spaces a <Tab> in file counts for

"set showmatch           " briefly jump to matching bracket
set ignorecase          " ignore case when pattern matching
set smartcase           " only if all characters are lower case
set incsearch           " highlight matches while typing search
set hlsearch            " keep previous search highlighted

"set lazyredraw         " Don't redraw while executing macros
                        " Disabled because neovim-dot-app slows down with this
set linespace=4         " Lineheight in GUI mode
set guioptions-=r       " Remove right-hand scroll bar
set guioptions-=L       " Remove left-hand scroll bar
set scroll=10           " Number of lines to scroll vertically with C-u, C-d
set whichwrap=b,s,h,l,<,>,[,] " Backspace and cursor keys wrap too
set cursorline          " Highlight current line
set noshowmode          " Hides vim mode information in command line

set complete-=i         " Don't scan included files. The .tags file is more performant
set fileformats+=mac    " Support all kind of EOLs by default
set title               " Set window title by default

set nocompatible
set t_Co=256
set mouse=a             " Enable mouse for scrolling and window resizing
set tags=./tags;$HOME   " search for tags in parent folders until home dir
" smaller indents on css and html files
" autocmd! syntax css,html,htmldjango,js setlocal shiftwidth=2 tabstop=2 softtabstop=2

let mapleader = ","
let g:mapleader = ","
let g:user_emmet_leader_key = '<c-e>'

" turn off highlighting of previous search
noremap <c-n> :nohlsearch<cr>

" Git/fugitive shortcuts
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gf :Gpull<CR>
nnoremap <Leader>gp :Gpush<CR>

" Undotree shortcuts
nnoremap <Leader>u :GundoToggle<CR>

" Toggle for source code map
map <Leader>m :TagbarToggle<CR>

" Toggle for file browser
map <Leader>f :VimFiler<CR>

" Copy & cut on (nearly) normal key combos
map <C-c> "+y<CR>
map <C-x> "+d<CR>

" Delete text without copying to clipboard
nnoremap <Leader>d "_dd
vnoremap <Leader>d "_d

nnoremap F :Find<CR>

" Page scrolling
nnoremap <S-Up> <C-u>
nnoremap <S-Down> <C-d>
vnoremap <S-Up> <C-u>
vnoremap <S-Down> <C-d>
inoremap <S-Down> <C-o><C-d>
inoremap <S-Up> <C-o><C-u>

" Horizontal scrolling
map .<Right> 20zl
map .<Left> 20zh

" Jump through paragraphs (Not working... thanks iTerm)
nnoremap <M-Up> {
nnoremap <M-Down> }
inoremap <M-Up> {
inoremap <M-Down> }

" Move between vertial splits easier
noremap <Leader><Left> <C-w>h
noremap <Leader><Right> <C-w>l
noremap <Leader><Up> <C-w>k
noremap <Leader><Down> <C-w>j

" Jump to beginning/end of line
" Combo is Shift-Alt-{Left/Right}
noremap [1;10D <Home>
noremap [1;10C <End>
inoremap [1;10D <Home>
inoremap [1;10C <End>
" Neo Vim did seem to top supporting escape sequences for mappings?
noremap <C-S-Left> <Home>
noremap <C-S-Right> <End>
inoremap <C-S-Left> <Home>
inoremap <C-S-Right> <End>
" Mac CMD key
noremap <D-Left> <Home>
noremap <D-Right> <End>
inoremap <D-Left> <Home>
inoremap <D-Right> <End>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
vnoremap . :normal .<CR>

" Use CtrlP to find definitions
nnoremap <C-]> :CtrlPtjump<CR>
vnoremap <C-]> :CtrlPtjumpVisual<CR>

" Save with ctrl-s
" Requires `stty -ixon` in .zshrc
noremap <C-s> :w<CR>
vnoremap <C-s> <C-c>:w<CR>
inoremap <C-s> <C-o>:w<CR>

" Close current buffer
map <C-w> :bd<CR>
"nmap <C-w> :b#<bar>bd#<CR>

" Buffer explorer
map <Leader>b :CtrlPBuffer<CR>

" Search and replace
map <Leader>r :Replace<CR>

" Search and replace in all files
map <Leader>R :Gsearch<CR>
command ReplaceInProject Gsearch

" Map <Leader>ff to display all lines with keyword under cursor and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Easy-Align customazations
vmap <Enter> <Plug>(EasyAlign)
" Easy-Align How-To:
"  `vip` in normal node to select paragraph or select manually
"  <Enter> to start EasyAlign, then `=` to align selection on `=`

" NERD-Commenter customazations
map \ <Plug>NERDCommenterToggle

" Prevent common mistake of pressing q: instead of :q
map q: :q

highlight LineNr term=bold cterm=NONE ctermfg=grey ctermbg=NONE
highlight YcmWarningSign ctermfg=Green
highlight YcmErrorSign ctermfg=Red cterm=bold
highlight YcmErrorSection ctermbg=Red ctermfg=White cterm=bold
highlight SignColumn ctermbg=NONE cterm=NONE guibg=background gui=NONE
highlight Pmenu ctermbg=Blue ctermfg=Black
highlight PmenuSel ctermbg=White ctermfg=Black
highlight Search ctermbg=Yellow ctermfg=Black
highlight Visual ctermbg=Yellow ctermfg=Black
highlight VertSplit ctermbg=NONE ctermfg=grey cterm=NONE guibg=background gui=NONE
"highlight PmenuSel ctermbg=lightgrey ctermfg=Black

" Full height vertical seperator char
set fillchars=vert:│

" Indent guides customazations
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
" Toggle indent guides with <Leader>ig

" VimFiller customazations
let g:vimfiler_tree_opened_icon='▼'
let g:vimfiler_tree_closed_icon='▷'
let g:vimfiler_readonly_file_icon='🔒'
let g:vimfiler_quick_look_command=''
let g:vimfiler_as_default_explorer=1
let g:vimfiler_ignore_pattern='\%(.meta\)$\|^\..*'
let g:ycm_error_symbol='💩'
let g:ycm_warning_symbol='•'
"let NERDTreeIgnore = ['\.meta$']

" CtrlP fuzzy search customazations
" Use Ag for better performance
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
                \ --ignore .git
                \ --ignore .svn
                \ --ignore .hg
                \ --ignore .DS_Store
                \ --ignore "**/*.pyc"
                \ -g ""'
endif
" Use cmatcher for better performance
let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}
" Immediatly jump to definition if only one is found
let g:ctrlp_tjump_only_silent = 1
" Shorten filenames
let g:ctrlp_tjump_shortener = ['(.*/)', '.../']

 "AirLine customazations
if !exists("g:airline_symbols")
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_section_y = airline#section#create(['%p', '%%'])
let g:airline_section_z = airline#section#create_right(['%l', '%c'])

" Store persistent undo files in a seperate folder
if has("persistent_undo")
    set undofile
    set undodir='~/.undodir'
    set undolevels=1000
    set undoreload=10000
endif
" Automatically create directories for backup and undo files
"if !isdirectory(expand(s:dir))
  "call system("mkdir -p " . expand(s:dir) . "/{backup,undo}")
"end

" Store bookmarks in the current working directory
let g:bookmark_save_per_working_dir=1
let g:bookmark_auto_save=1
function! g:BMWorkDirFileLocation()
    let filename = 'bookmarks'
    let location = ''
    if isdirectory('.git')
        " Current work dir is git's work tree
        let location = getcwd().'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', '.;')
    endif
    if len(location) > 0
        return location.'/'.filename
    else
        return getcwd().'/.'.filename
    endif
endfunction

" Highlight characters when lines get too long
autocmd! BufWinEnter *.py,*.nvim,nvimrc match ErrorMsg '\%>79v.\+'
autocmd! BufWinEnter *.html match ErrorMsg '\%>100v.\+'

" Automatically wrap text while typing in Markdown and rST documents
autocmd! BufNewFile,BufReadPost *.md set filetype=markdown
autocmd! Filetype markdown,rst set textwidth=79

" Pretty ugly, but fixes a bug where a previous `scroll` setting gets
" overwriten in splits
autocmd BufEnter *.* set scroll=10

" Enter normal mode when entering terminal buffer
"autocmd BufEnter term://* call feedkeys("\<esc>")

" Remove trailing whitespace and empty lines at end of file
augroup whitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd BufWritePre * :%s/\($\n\s*\)\+\%$//e
augroup END

" More comfortable search and replace
command -nargs=0 -range=% Replace call Replace(<line1>, <line2>)
function! Replace(start, end)
    let pattern = ''
    let replacement = ''
    if pattern == ''
        let pattern = input('Replace pattern: ', expand('<cword>'))
        if pattern == ''
            return
        endif
    endif
    if replacement == ''
        let replacement = input('Replace pattern '.pattern.' with: ')
        if replacement == ''
            return
        endif
    endif
    execute a:start.','.a:end.'s/'.pattern.'/'.replacement.'/gc'
endfunction

command -nargs=? Find call Find(<q-args>)
function! Find(search)
    let query = a:search
    if query == ''
        let iquery = input('Find: ')
        let query = iquery
    endif
    if query == ''
        return
    endif
    execute 'Ag -Q "'.query.'"'
endfunction

fun! Start()
    " Don't run if: we have commandline arguments, we don't have an empty
    " buffer, if we've not invoked as vim or gvim, or if we'e start in insert mode
    if argc() || line2byte('$') != -1 || v:progname !~? '^[-gmnq]\=vim\=x\=\%[\.exe]$' || &insertmode
        return
    endif

    " Start a new buffer ...
    enew

    " ... and set some options for it
    setlocal
        \ bufhidden=wipe
        \ buftype=nofile
        \ nobuflisted
        \ nocursorcolumn
        \ nocursorline
        \ nolist
        \ nonumber
        \ noswapfile
        \ norelativenumber

    " Now we can just write to the buffer, whatever you want.
    call append('$', "")
    call append('$', '')
    call append('$', '                                                                88')
    call append('$', '                                                                ""')
    call append('$', '                ')
    call append('$', '                  8b,dPPYba,   ,adPPYba,  ,adPPYba,  8b       d8 88 88,dPYba,,adPYba,')
    call append('$', '                 88P''   `"8a a8P_____88 a8"     "8a `8b     d8'' 88 88P''   "88"    "8a')
    call append('$', '                 88       88 8PP""""""" 8b       d8  `8b   d8''  88 88      88      88')
    call append('$', '                 88       88 "8b,   ,aa "8a,   ,a8"   `8b,d8''   88 88      88      88')
    call append('$', '                 88       88  `"Ybbd8"''  `"YbbdP"''      "8"     88 88      88      88')
    call append('$', '                ')
    "for line in split(system('fortune -a'), '\n')
        "call append('$', '        ' . l:line)
    "endfor

    " No modifications to this buffer
    setlocal nomodifiable nomodified

    " When we go to insert mode start a new buffer, and start insert
    nnoremap <buffer><silent> e :enew<CR>
    nnoremap <buffer><silent> i :enew <bar> startinsert<CR>
    nnoremap <buffer><silent> o :enew <bar> startinsert<CR>
endfun

" Run after "doing all the startup stuff"
autocmd VimEnter * call Start()
