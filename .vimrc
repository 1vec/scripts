source $VIMRUNTIME\defaults.vim
filetype on
syntax on
colorscheme desert
if has('win32')
  set guifont=Consolas:h14
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
  autocmd GUIEnter * simalt ~x
endif
set nu
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
