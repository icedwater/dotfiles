" beginnings of the most excellent vimrc ever
" icedwater said somewhat humbly

set filetype=off
set background=dark

set smartindent
set autoindent

set shiftwidth=4
set expandtab
set smarttab

" testing stuff from
" thoughtbot/dotfiles on github
set ruler
set autowrite

" break lines at 80 and draw a line at char 81
set colorcolumn=+1
set textwidth=80

" testing twitvim
let twitvim_enable_python = 1
let twitvim_browser_cmd = '/usr/bin/firefox'

filetype indent on
filetype plugin on

" playing with autocmd to set textwidth to 80
" for text files and 140 for tweet (.twt) files
augroup tweetStuff
    autocmd!
    autocmd BufRead,BufNewFile *.twt set filetype=tweet
    autocmd filetype tweet setlocal textwidth=140
augroup END
