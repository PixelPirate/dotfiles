set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.config/nvim/plugged')
"Plug 'altercation/vim-colors-solarized'
"Plug 'hukl/Smyck-Color-Scheme'
Plug 'reedes/vim-colors-pencil'
"Plug 'reedes/vim-wheel'
"Plug 'gilsondev/searchtasks.vim'
Plug 'TaskList.vim'

Plug 'itchyny/lightline.vim'
"Plug 'bling/vim-airline'

Plug 'Valloric/YouCompleteMe', { 'do': 'python install.py --clang-completer --omnisharp-completer --racer-completer' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'JazzCore/ctrlp-cmatcher', { 'do': 'export CFLAGS=-Qunused-arguments; export CPPFLAGS=-Qunused-arguments; ./install.sh' }
"Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'rking/ag.vim'

"Plug 'Tpope/vim-dispatch'
"Plug 'radenling/vim-dispatch-neovim'
Plug 'majutsushi/tagbar'
Plug 'szw/vim-tags' " Generates tags in fitting folders (.git). :TagsGenerate! for new project, then on every save. Uses vim-dispatch.

"Plug 'Shougo/vimfiler.vim'
"Plug 'Shougo/unite.vim' " Needed by vimfiler
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'scrooloose/nerdcommenter'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'skwp/greplace.vim'
Plug 'simnalamburt/vim-mundo' " Fork of Gundo, which seems abandoned

Plug 'sheerun/vim-polyglot' " Syntax support for many lanuages

"Plug 'inside/vim-search-pulse' " Pulse search hits

Plug 'ryanss/vim-hackernews'

Plug 'mhinz/vim-startify'

" Disabled because not currently nessessary
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-git'
"Plug 'benekastah/neomake'
"Plug 'scrooloose/syntastic'

" Maybe cool in the future
"Plug 'Shougo/deoplete.nvim' " Asynchronous completition, cutting edge

" Junk
"Plug 'tomtom/quickfixsigns_vim'
"Plug 'junegunn/vim-easy-align'
"Plug 'airblade/vim-gitgutter'

" Should load last
Plug 'ryanoasis/vim-devicons' " Extra glyphs, load after VimFiler / NerdTree
call plug#end()
"execute pathogen#infect()
filetype plugin indent on    " detect file type and load indents and plugins

"set guifont=Literation\ Mono\ Powerline\ Nerd\ Font\ Complete:h18

" Set cursor stlye, needs `export NVIM_TUI_ENABLE_CURSOR_SHAPE=1`
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let &t_SI .= "\<Esc>[6 q"  " solid vertical line in insert mode
let &t_EI .= "\<Esc>[2 q"  " solid block in normal mode
highlight Cursor guifg=blue guibg=blue
highlight iCursor guifg=blue guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
" 1 or 0 -> blinking block
" 2 -> solid block
" 3 -> blinking underscore
" 4 -> solid underscore
" 5 -> blinking vertical bar
" 6 -> solid vertical bar

scriptencoding utf-8

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

" Performance improvements
set nocursorcolumn
set norelativenumber
set synmaxcol=200
set noshowmatch
autocmd BufWinEnter * :NoMatchParen
"set ttyfast
"set lazyredraw
syntax sync minlines=256
autocmd BufEnter * :syn sync maxlines=256

if &t_Co > 2 || has("gui_running")
    syntax on                    " turn on syntax highlighting
endif

if &t_Co >= 256 || has("gui_running")
    set background=light
    if &background == 'dark'
        colorscheme smyck        " syntax highlighting colours
    else
        "let g:airline_theme = 'luna'
        colorscheme pencil
        let g:pencil_higher_contrast_ui = 0
        let g:pencil_neutral_headings = 0
        let g:pencil_neutral_code_bg = 0
        let g:pencil_gutter_color = 0
        let g:pencil_spell_undercurl = 1
        let g:pencil_terminal_italics = 1
        let g:airline_theme = 'pencil'
        highlight IncSearch cterm=underline
    endif
endif

let mapleader = ","
let g:mapleader = ","
let g:user_emmet_leader_key = '<c-e>'

" turn off highlighting of previous search
noremap <c-n> :nohlsearch<cr>

" Git/fugitive shortcuts
"nnoremap <Leader>gs :Gstatus<CR>
"nnoremap <Leader>gc :Gcommit<CR>
"nnoremap <Leader>gd :Gdiff<CR>
"nnoremap <Leader>gf :Gpull<CR>
"nnoremap <Leader>gp :Gpush<CR>

" Undotree shortcuts
nnoremap <Leader>u :MundoToggle<CR>

" Toggle for source code map
map <Leader>m :TagbarToggle<CR>

" Toggle for file browser
"map <Leader>f :VimFiler<CR>
map <Leader>f :NERDTreeToggle<CR>

" Copy & cut on (nearly) normal key combos
map <C-c> "+y<CR>
map <C-x> "+d<CR>

" Delete text without copying to clipboard
nnoremap <Leader>d "_dd
vnoremap <Leader>d "_d

" Keyboard shortcuts for finding in current directory
nnoremap F :Find<CR>
nnoremap <C-f> :Find<CR>

" Page scrolling
nnoremap <S-Up> <Up><Up><Up><Up><Up><Up><Up><Up><Up><Up>
nnoremap <S-Down> <Down><Down><Down><Down><Down><Down><Down><Down><Down><Down>
"nnoremap <S-Up> <C-u>
"nnoremap <S-Down> <C-d>
vnoremap <S-Up> <C-u>
vnoremap <S-Down> <C-d>
inoremap <S-Down> <C-o><C-d>
inoremap <S-Up> <C-o><C-u>

" Horizontal scrolling
map .<Right> 20zl
map .<Left> 20zh

" Jump through paragraphs (Only works in GUI)
nnoremap <D-Up> {
nnoremap <D-Down> }
inoremap <D-Up> {
inoremap <D-Down> }

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
" Neovim did seem to stop supporting escape sequences for mappings?
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
"vnoremap < <gv
"vnoremap > >gv
"vnoremap . :normal .<CR>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
nmap <Tab> a<C-t><Esc>
nmap <S-Tab> a<C-d><Esc>

" Find definitions
command GoTo YcmCompleter GoTo
command GoToDeclaration YcmCompleter GoToDeclaration
command GoToDefinition YcmCompleter GoToDefinition
command GoToImplementation YcmCompleter GoToImplementation
"nnoremap <C-]> :CtrlPtjump<CR>
"vnoremap <C-]> :CtrlPtjumpVisual<CR>
" Find definitions for GUI
nnoremap <C-ü> :YcmCompleter GoTo<CR>
" Find definitions for Terminal
nnoremap <C-]> :YcmCompleter GoTo<CR>

" Save with ctrl-s
" Requires `stty -ixon` in .zshrc
noremap <C-s> :w<CR>
vnoremap <C-s> <C-c>:w<CR>
inoremap <C-s> <C-o>:w<CR>

" Close current buffer
map <C-w> :bd<CR>
"nmap <C-w> :b#<bar>bd#<CR>
"nnoremap <C-w> :bp\|bd #<CR>

" Buffer explorer
"map <Leader>b :CtrlPBuffer<CR>
map <Leader>b :Buffers<CR>

" FZF CtrlP replacement
map <C-p> :Files<CR>

" Search and replace
map <Leader>r :Replace<CR>

" Search and replace in all files
"map <Leader>R :Gsearch<CR>
command ReplaceInProject Gsearch

" Map <Leader>ff to display all lines with keyword under cursor and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Easy-Align customazations
"vmap <Enter> <Plug>(EasyAlign)
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

" Vim-Wheel customazations
"let g:wheel#map#mouse = 1

" Indent guides customazations
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
" Toggle indent guides with <Leader>ig

" Startify customazations
let g:startify_custom_header = []

" VimFiller customazations
"let g:vimfiler_tree_opened_icon='▼'
"let g:vimfiler_tree_closed_icon='▷'
"let g:vimfiler_readonly_file_icon='🔒'
"let g:vimfiler_quick_look_command=''
"let g:vimfiler_as_default_explorer=1
"let g:vimfiler_ignore_pattern='\%(.meta\)$\|^\..*'
"let g:ycm_error_symbol='💩'
"let g:ycm_warning_symbol='•'
"let NERDTreeIgnore = ['\.meta$']
"let g:ycm_rust_src_path = '~/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src'

" FZF customazations
" https://github.com/junegunn/fzf/wiki/Color-schemes
" --color fg:252,bg:233,hl:67,fg+:252,bg+:235,hl+:81
" --color info:144,prompt:161,spinner:135,pointer:135,marker:118
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()


" CtrlP fuzzy search customazations
" Use Ag for better performance
"if executable('ag')
"    let g:ctrlp_user_command = 'ag %s -i -l --nocolor --nogroup --hidden
"                \ --ignore .git
"                \ --ignore .svn
"                \ --ignore .hg
"                \ --ignore .DS_Store
"                \ --ignore "**/*.pyc"
"                \ -g ""'
"endif
" Use cmatcher for better performance
"let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}
" Immediatly jump to definition if only one is found
"let g:ctrlp_tjump_only_silent = 1
" Shorten filenames
"let g:ctrlp_tjump_shortener = ['(.*/)', '.../']

 "AirLine customazations
"if !exists("g:airline_symbols")
    "let g:airline_symbols = {}
"endif
"let g:airline_powerline_fonts=1
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_section_y = airline#section#create(['%p', '%%'])
"let g:airline_section_z = airline#section#create_right(['%l', '%c'])

 "DevIcons customazations
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

 "Lightline customazations
    "\ 'separator': { 'left': '', 'right': '' },
    "\ 'subseparator': { 'left': '', 'right': '' },
let g:lightline = {
    \ 'colorscheme': 'PaperColor',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component': {
    \   'readonly': '%{&readonly?"⭤":""}',
    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
    \ },
    \ 'component_visible_condition': {
    \   'readonly': '(&filetype!="help"&& &readonly)',
    \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
    \ },
    \ 'component_function': {
    \   'filetype': 'DevIconsFiletype',
    \   'fileformat': 'DevIconsFileformat',
    \ }
\ }
function! DevIconsFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! DevIconsFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" Store persistent undo files in a seperate folder
"if has("persistent_undo")
    "set undofile
    "set undodir='~/.undodir'
    "set undolevels=1000
    "set undoreload=10000
"endif
" Automatically create directories for backup and undo files
"if !isdirectory(expand(s:dir))
  "call system("mkdir -p " . expand(s:dir) . "/{backup,undo}")
"end

" Store bookmarks in the current working directory
"let g:bookmark_save_per_working_dir=1
"let g:bookmark_auto_save=1
"function! g:BMWorkDirFileLocation()
    "let filename = 'bookmarks'
    "let location = ''
    "if isdirectory('.git')
        "" Current work dir is git's work tree
        "let location = getcwd().'/.git'
    "else
        "" Look upwards (at parents) for a directory named '.git'
        "let location = finddir('.git', '.;')
    "endif
    "if len(location) > 0
        "return location.'/'.filename
    "else
        "return getcwd().'/.'.filename
    "endif
"endfunction

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
"autocmd VimEnter * call Start()
