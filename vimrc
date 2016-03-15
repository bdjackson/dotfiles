" VIM Configuration File
" ------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"   call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'wincent/Command-T'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ------------------------------------------------------------------------------
" Set background for gui version

if has('gui_running')
  syntax enable
  set background=light
  " set background=dark
  colorscheme solarized
endif

" set file types for syntax coloring
au BufNewFile,BufRead *.icc set filetype=cpp

" ------------------------------------------------------------------------------
scriptencoding utf-8
set encoding=utf-8

" ------------------------------------------------------------------------------
" Live dangerously! No backups or swap files
set nobackup
set noswapfile

" ------------------------------------------------------------------------------
" Set leader key to ","
" let mapleader=","

" fix backspace
if &term == "xterm" || &term == "xterm-256color" || &term == "screen"
    set t_kb=
    fixdel
endif

"" " ------------------------------------------------------------------------------
" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=2        " tab width is 2 spaces
set shiftwidth=2     " indent also with 2 spaces
set softtabstop=2    " remove 2 spaces with backspace
set expandtab        " expand tabs to spaces

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
" set textwidth=120

" ------------------------------------------------------------------------------
" highlight matching braces
" set showmatch

" ------------------------------------------------------------------------------
" function to toggle number mode (relative or absolute)
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" turn line numbers on
set number
" set relativenumber

" turn on ruler 
set ruler

" highlight all matches for the last used pattern
set hls

" show search matches as you type
set incsearch

" do syntax coloring
syntax on

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.cpp,*.cxx,*.h match BadWhitespace /\s\+$/

" Use the same symbols as TextMate for tabstops and EOLs
" NOTE: when I open this file in some versions of vim, the tab character gets
"       overwritten with different character.  To put it back do:
"       <ctrl>v+u+25b8
set listchars=eol:¬,tab:▸\ 

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Turn on cursor line
set cursorline

nmap <leader>cl :set cursorline!<CR>

" Turn on guide for 81 characters
if exists('+colorcolumn')
  set colorcolumn=81

  if !has('gui_running')
    highlight ColorColumn ctermbg=7
  endif
endif

" When you open a new file using :e, hide rather than close current buffer
set hidden

" ------------------------------------------------------------------------------
" show title of file in title of terminal
set title

" enables smart indenting for code.
" not compatible with paste
set cin

" fixes paste so that you can paste lines of indented code.
" not compatible with cin
" set paste

" Set status line with useful information
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v][buf%n]%=
"              | | | | |  |   |      |  |     |    |     |
"              | | | | |  |   |      |  |     |    |     + current buffer
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

set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%P                           " offset
set laststatus=2

"if has("gui_running")
"  set guifont=Source_Code_Pro_Semibold:h10
"endif
set guifont=Source_Code_Pro:h9

" " ------------------------------------------------------------------------------
" "  snipMate setup
" let g:snippets_dir="~/.vim/snippets/,~/.vim/bundle/snipmate.vim/snippets/"

" ------------------------------------------------------------------------------
" Enhanced keyboard mappings
"
" map kj to escape
imap kj <Esc>

" " in normal mode F2 will save the file
" nmap <F2> :w<CR>
" 
" " in insert mode F2 will exit insert, save, enters insert again
" imap <F2> <ESC>:w<CR>i
" 
" " switch between header/source with F4
" map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" 
" " recreate tags file with F5
" map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" 
" " create doxygen comment
" map <F6> :Dox<CR>
" 
" " build using makeprg with <F7>
" map <F7> :make<CR>
" 
" " build using makeprg with <S-F7>
" map <S-F7> :make clean all<CR>
" 
" " goto definition with F12
" map <F12> <C-]>

" Allows writing with :W as well as :w
:cnoreabbrev <expr> W getcmdtype()==':'&&getcmdline()=~#'^W'?'w':'W'

" "" in diff mode we use the spell check keys for merging
" "if &diff
" "  " diff settings
" "  map <M-Down> ]c
" "  map <M-Up> [c
" "  map <M-Left> do
" "  map <M-Right> dp
" "  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
" "else
" "  " spell settings
" "  :setlocal spell spelllang=en
" "  " set the spellfile - folders must exist
" "  set spellfile=~/.vim/spellfile.add
" "  map <M-Down> ]s
" "  map <M-Up> [s
" "endif
" 
 " real tab in Makefiles
 " handled by after/ftplugin/make.vim
 autocmd FileType make setlocal noexpandtab

" ------------------------------------------------------------------------------
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" " TextMate style indenting
" nmap <C-[> <<
" nmap <C-]> >>
" vmap <C-[> <gv
" vmap <C-]> >gv

" switch between windows a bit more easily
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" " Bubble single lines
" " nmap <C-Up> ddkP
" " nmap <C-Down> ddp
" nmap <C-Up> [e
" nmap <C-Down> ]e
" " Bubble multiple lines
" vmap <C-Up> [egv
" vmap <C-Down> ]egv

" common alignments
if  exists(":Tabularize")
  nmap <leader>a= :Tabularize /=<CR>
  vmap <leader>a= :Tabularize /=<CR>
  nmap <leader>a: :Tabularize /:<CR>
  vmap <leader>a: :Tabularize /:<CR>
  nmap <leader>afun :Tabularize /[(,}]<CR>
  vmap <leader>afun :Tabularize /[(,}]<CR>
endif


" ------------------------------------------------------------------------------
" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
  
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

" " ------------------------------------------------------------------------------
" " Folding settings
" set foldmethod=indent "fold based on indent
" set foldnestmax=10    "deepest fold is 10 levels
" set nofoldenable      "dont fold by default
" set foldlevel=1       "this is just what i use
" 
" ------------------------------------------------------------------------------
" Edit my vimrc in a new tab
nmap <leader>ev :tabedit $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" " ------------------------------------------------------------------------------
" "
" " set t_te= t_ti=
" " set t_te= t_ti=
" " set t_ti= t_te=
" " au VimLeave * :!clear
" "
" ------------------------------------------------------------------------------
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    " hi statusline ctermfg=darkred
    hi statusline ctermfg=magenta
  elseif a:mode == 'r'
    hi statusline ctermfg=blue
  else
    hi statusline guibg=purple
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=lightgreen

hi User1 term=reverse


autocmd WinLeave *  hi statuslineNC ctermfg=grey ctermbg=black
au CmdwinEnter * hi statusline ctermfg=lightblue
au CmdwinLeave * hi statusline ctermfg=lightgreen


let g:tex_flavor='latex'
