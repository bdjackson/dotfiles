" VIM Configuration File
" ------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" ------------------------------------------------------------------------------
" Checkout vim-plug to .vim directory
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'wincent/Command-T'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }
Plug 'sainnhe/everforest'
Plug 'lifepillar/vim-solarized8', {'as': 'solarized8'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-fugitive'
Plug 'jpalardy/vim-slime'
" Plug 'klafyvel/vim-slime-cells'
" Plug 'hanschen/vim-ipython-cell'
Plug 'chrisbra/csv.vim'

" Plug 'easymotion/vim-easymotion'
" Plug 'preservim/nerdcommenter'

"
" Don't reinstall or update every time
" :PlugClean
" :PlugUpdate
" :PlugInstall

call plug#end()


" ------------------------------------------------------------------------------
" set background=dark
" set background=light
" colorscheme gruvbox
" colorscheme solarized
" colorscheme solarized8
" colorscheme everforest
" colorscheme codedark
" colorscheme evening
"
" " Set background for gui version
" if has('gui_running')
"   syntax enable
"   set background=light
"   " set background=dark
"   colorscheme solarized
" else
"   set backspace=indent,eol,start
" endif
"
" if &diff
"   colorscheme evening
" endif

" set file types for syntax coloring
au BufNewFile,BufRead *.icc set filetype=cpp

" ------------------------------------------------------------------------------
" Set background for tmux version
" if &term == 'screen' || &term == 'screen-256color'
"   set background=dark
" endif
" set background=dark

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

" map <S-Del> <C-h>
" nmap <S-Del> <C-h>
imap <S-Del> <C-h>
cnoremap <S-Del> <C-h>


"" " ------------------------------------------------------------------------------
" use indentation of previous line
set autoindent

" use intelligent indentation
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
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <C-m> :call NumberToggle()<cr>

" turn line numbers on and use relative number by default
set number
set relativenumber

" turn on ruler
set ruler

" highlight all matches for the last used pattern
set hls

" show search matches as you type
set incsearch

set wildmenu "show all options in tab complete
set foldmethod=indent "vs syntax
set foldlevelstart=99
" set updatetime=300 "Recommended for coc: shorten from 4000 default for better coc.nvim experience

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

" in diff mode we use the spell check keys for merging
if &diff
  " diff settings
  map ] ]c
  map [ [c
  map <M-Down> ]c
  map <M-Up> [c
  map <M-Left> do
  map <M-Right> dp
  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
" "else
" "  " spell settings
" "  :setlocal spell spelllang=en
" "  " set the spellfile - folders must exist
" "  set spellfile=~/.vim/spellfile.add
" "  map <M-Down> ]s
" "  map <M-Up> [s
endif
"
" real tab in Makefiles
" handled by after/ftplugin/make.vim
autocmd FileType make setlocal noexpandtab

" ------------------------------------------------------------------------------
" TextMate style indenting
nmap <C-[> <<
nmap <C-]> >>
vmap <C-[> <gv
vmap <C-]> >gv

" switch between windows a bit more easily
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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

" ------------------------------------------------------------------------------
" Edit my vimrc in a new tab
nmap <leader>ev :tabedit $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" ------------------------------------------------------------------------------
let g:tex_flavor='latex'
let vim_markdown_preview_github=1

" ------------------------------------------------------------------------------
"  NERDTree related settings
" Toggle NERDTree
map <c-n> :NERDTreeToggle<CR>

" Close vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ------------------------------------------------------------------------------
noremap <Space> <Nop>
let g:netrw_winsize = 20
let mapleader = " "
let g:slime_target = "tmux"
" let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":0.1"}
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
" let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":4.1"}
let g:slime_python_ipython = 1
let g:slime_dont_ask_default = 1
let g:netrw_banner=0

let g:slime_cell_delimiter = "#%%"

noremap <leader>ss :SlimeSend<cr>
nmap <leader>sc <Plug>SlimeSendCell

" ------------------------------------------------------------------------------
nnoremap , :buffers<cr>:buffer<space>


" ------------------------------------------------------------------------------
set clipboard^=unnamed,unnamedplus
