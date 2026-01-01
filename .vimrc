set perldll=/usr/lib64/perl5/CORE/libperl.so

colorscheme murphy

set modeline
set expandtab
set nocompatible
set number
set shiftwidth=2
set tabstop=2
set nowrap
set expandtab
set nobackup
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set nohlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" This will add an ascii separator and closer e.g. :Sep Config
" #--- Config ---
" #--------------, but 72 chars wide for sep and closer
command! -nargs=+ Sep
  \ call system('ascii_separator.pl '
  \ . shellescape(expand('%')) . ' '
  \ . line('.') . ' "' . <q-args> . '"')
  \ | silent edit!
