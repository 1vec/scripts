source $VIMRUNTIME\defaults.vim
set fileencodings=utf-8,gbk
filetype on
syntax on
colorscheme desert

if has('win32')
  set guifont=Consolas:h14
  if has("gui_running")
    autocmd GUIEnter * simalt ~x
  endif
endif

if has("gui_running")
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
endif

set nu
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
