set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'L9'
Plug 'wting/rust.vim'
Plug 'bling/vim-airline'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer --omnisharp-completer' }
Plug 'hukl/Smyck-Color-Scheme'
Plug 'aspnetcs'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'JazzCore/ctrlp-cmatcher', { 'do': 'export CFLAGS=-Qunused-arguments; export CPPFLAGS=-Qunused-arguments; ./install.sh' }
Plug 'cespare/vim-toml'
Plug 'ryanss/vim-hackernews'
Plug 'junegunn/vim-easy-align'
Plug 'reedes/vim-colors-pencil'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'skwp/greplace.vim'
Plug 'tpope/vim-abolish'
Plug 'simnalamburt/vim-mundo' " Fork of Gundo, which seems abandoned
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'benmills/vimux'
Plug 'vimez/vim-tmux'
call plug#end()
execute pathogen#infect()
filetype plugin indent on    " detect file type and load indents and plugins
syntax on                    " turn on syntax highlighting

set background=light
if &background == 'dark'
    colorscheme smyck           " syntax highlighting colours
else
    colorscheme pencil
    set background=light
    let g:pencil_terminal_italics = 1
    let g:airline_theme = 'pencil'
    highlight IncSearch cterm=underline
    highlight Visual guifg=#000000 guibg=#F3E430 gui=none
endif

if &term =~ '^xterm'
  let &t_SI .= "\<Esc>[6 q"  " solid vertical line in insert mode
  let &t_EI .= "\<Esc>[2 q"  " solid block in normal mode
  " 1 or 0 -> blinking block
  " 2 -> solid block
  " 3 -> blinking underscore
  " 4 -> solid underscore
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

set autoread            " auto reload buffer when file modified externally
set clipboard=unnamed   " yank and paste using system clipboard
set encoding=utf-8      " default character encoding
set hidden              " do not unload buffers that get hidden
set noswapfile          " do not use swap file for buffers
set nowritebackup       " do not make backup before overwriting file

set laststatus=2        " always show the status line
set nowrap              " do not wrap text
set number              " show line numbers
set scrolloff=3         " keep minimal number of lines above/below cursor
set showcmd             " show command line at bottom of screen
set sidescroll=3        " scroll sideways 3 charasters at a time
set splitright          " open vertical split right of current window
set visualbell          " use visual bell instead of beeping
set wildmenu            " tap auto-complete for commands
set wildignore=*.pyc    " stuff for auto-complete to ignore

set backspace=2         " make backspace behave normally
set expandtab           " insert taps as spaces
set shiftwidth=4        " number of spaces for auto indent and line shift
set cindent             " syntax-aware auto indent
set smarttab            " <BS> deletes a shiftwidth worth of space
set softtabstop=4       " number of spaces pressing <Tab> counts for
set tabstop=4           " number of spaces a <Tab> in file counts for

set showmatch           " briefly jump to matching bracket
set ignorecase          " ignore case when pattern matching
set smartcase           " only if all characters are lower case
set incsearch           " highlight matches while typing search
set hlsearch            " keep previous search highlighted

set lazyredraw          " Don't redraw while executing macros
"set linespace=4         " Lineheight in GUI mode
set guioptions-=r       " Remove right-hand scroll bar
set guioptions-=L       " Remove left-hand scroll bar
set scroll=10           " Number of lines to scroll vertically with C-u, C-d

set nocompatible
set t_Co=256
set mouse=a
set tags=./tags;$HOME   " search for tags in parent folders until home dir

" Smaller indents on css and html files
" autocmd! Syntax css,html,htmldjango,js setlocal shiftwidth=2 tabstop=2 softtabstop=2

let mapleader = ","
let g:mapleader = ","
let g:user_emmet_leader_key = '<C-e>'

" Turn off highlighting of previous search
noremap <C-n> :nohlsearch<CR>

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

" Use CMD key ain't working
"map <M-c> "+y<CR>
"map <M-x> "+d<CR>

" Delete text without copying to clipboard
nnoremap <Leader>d "_dd
vnoremap <Leader>d "_d

nnoremap F :Find<CR>

" Page scrolling
nnoremap <S-Up> <C-u>
nnoremap <S-Down> <C-d>
inoremap <S-Down> <C-o><C-d>
inoremap <S-Up> <C-o><C-u>

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

" Save with ctrl-s
" Requires `stty -ixon` in .zshrc
noremap <C-s> :w<CR>
vnoremap <C-s> <C-c>:w<CR>
inoremap <C-s> <C-o>:w<CR>

" Close current buffer
map <C-w> :bd<CR>

" Buffer explorer
map <Leader>b :CtrlPBuffer<CR>

" Search and replace
map <Leader>r :Replace<CR>

" Search and replace in all files
map <Leader>R :Gsearch<CR>

" Easy-Align customazations
vmap <Enter> <Plug>(EasyAlign)
" Easy-Align How-To:
"  `vip` in normal node to select paragraph or select manually
"  <Enter> to start EasyAlign, then `=` to align selection on `=`

" NERD-Commenter customazations
map \ <Plug>NERDCommenterToggle

" Vimux customazations
let g:VimuxOrientation="h"
map <Leader>p :VimuxPromptCommand<CR>
map <Leader>π :VimuxRunLastCommand<CR>
"π is Alt-p
map <Leader>∏ :VimuxTogglePane<CR>
"∏ is Alt-Shift-p

highlight LineNr term=bold cterm=NONE ctermfg=grey ctermbg=NONE
highlight YcmWarningSign ctermfg=Green
highlight YcmErrorSign ctermfg=Red cterm=bold
highlight YcmErrorSection ctermbg=Red ctermfg=White cterm=bold
highlight SignColumn ctermbg=NONE cterm=NONE
highlight Pmenu ctermbg=Blue ctermfg=Black
highlight PmenuSel ctermbg=White ctermfg=Black
highlight Search ctermbg=Yellow ctermfg=Black
highlight Visual ctermbg=Yellow ctermfg=Black
highlight VertSplit ctermbg=NONE ctermfg=grey cterm=NONE

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

" AirLine customazations
if !exists("g:airline_symbols")
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:Powerline_symbols='fancy'
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

" Highlight characters when lines get too long
autocmd! BufWinEnter *.py,*.vim,vimrc match ErrorMsg '\%>79v.\+'
autocmd! BufWinEnter *.html match ErrorMsg '\%>100v.\+'

" Automatically wrap text while typing in Markdown and rST documents
autocmd! BufNewFile,BufReadPost *.md set filetype=markdown
autocmd! Filetype markdown,rst set textwidth=79

" Pretty ugly, but fixes a bug where a prefious `scroll` setting gets
" overwriten in splits
autocmd BufEnter *.* set scroll=10

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
