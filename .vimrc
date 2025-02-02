set expandtab
set nocompatible
set nonumber
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set background=dark
set tw=76
set expandtab
set nobackup
set scrolloff=10
set nowrap
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
color twilight256

augroup DisableTemplateSetupWizard
  autocmd!
  autocmd FileType perl let b:deoplete_auto_complete_start_length = -1
augroup END

