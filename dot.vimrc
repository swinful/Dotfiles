" Author: Samuel A. Winful <samuel+vi@winful.com>
" Filename: .vimrc
" 

" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
set nomodeline
set nocompatible
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set ts=2
set bs=2
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

" Visual
set mat=5  " Bracket blinking.

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

colorscheme murphy
" colorscheme desert

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif


" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" if has("vms")
"  set nobackup		" do not keep a backup file, use versions instead
" else
"   set backup		" keep a backup file
" endif
set history=500		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set tw=79
set ai
set vb
set showmatch
set ignorecase
set background=dark
set tagstack
set pastetoggle=<F11>
" set foldmethod=manual

"javac in vim
"set makeprg=javac\ %
"set errorformat=%A%f:%l\ %m,%-Z%p^,%-C%.%#

"gcc in vim
set makeprg=gcc\ -o\ %<\ %

"dictionary word autocomplete. type <CTL-N> in the middle of a word to use
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set complete-=k complete+=k

"fix broken sun terminals (if we're stuck on one)
set t_cl=[2J

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

"collapsing window splits
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_ 

" remove ^M characters from windows files
map <C-M> mvggVG:s/<C-V><CR>//g<CR>`v

"cstags mapping
map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>

"rot13 dmca-grade encryption
"this is useful to obfuscate whatever it is that you're working on temporarily
"if someone walks by (vim pr0n?)
map <F3> mzggVGg?`z

" Do not expand tabs if we are Makefile
au BufRead,BufNewFile Makefile set ts=4 sw=4 noexpandtab
au BufRead,BufNewFile GNUmakefile set ts=4 sw=4 noexpandtab

autocmd BufNewFile,BufRead *.* set tw=80

"good tab completion - press <tab> to autocomplete if there's a character
"previously
function InsertTabWrapper()
      let col = col('.') - 1
      if !col || getline('.')[col - 1] !~ '\k'
          return "\<tab>"
      else
          return "\<c-p>"
      endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>


" map  <F7> :w<CR>:!ispell -x -d english %<CR><CR>:e<CR><CR>
map  :w!<CR>:!aspell check %<CR>:e! %<CR>

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 79 characters.
  autocmd FileType text setlocal textwidth=79

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")
