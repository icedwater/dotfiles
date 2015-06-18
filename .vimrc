" beginnings of the most excellent vimrc ever
" icedwater said somewhat humbly

set filetype=off
set background=dark

set smartindent
set autoindent

" tabbing, python style
set shiftwidth=4
set expandtab
set smarttab

" testing stuff from
" thoughtbot/dotfiles on github
set ruler
set autowrite

" break lines at 80 and draw a line at char 81
set colorcolumn=80,140
" set textwidth=80
set textwidth=140  " testing tweet constraints

" testing twitvim
let twitvim_enable_python = 1
let twitvim_browser_cmd = '/usr/bin/firefox'

filetype plugin on
