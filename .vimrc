" beginnings of the most excellent vimrc ever
" icedwater said somewhat humbly

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

" highlight what you've been searching for
set hlsearch

" break lines at 80 and draw a line at char 81
set colorcolumn=+1
set textwidth=80

filetype indent on
filetype plugin on

" testing twitvim
let twitvim_enable_python = 1
let twitvim_browser_cmd = '/usr/bin/firefox'

"""""" below is the autocmd stuff

" playing with autocmd to set textwidth to 80
" for text files and 140 for tweet (.twt) files
augroup tweetStuff
    autocmd!
    autocmd BufRead,BufNewFile *.twt set filetype=tweet
    autocmd filetype tweet setlocal textwidth=140
augroup END

" group definition for CSV files
augroup csv
    autocmd!
    autocmd BufRead,BufNewFile *.csv set filetype=csv
    autocmd filetype csv setlocal textwidth=0
augroup END

" group definition for SRT files
augroup srt
    autocmd!
    autocmd BufRead,BufNewFile *.srt set filetype=srt
    autocmd filetype srt setlocal textwidth=0
augroup END

" group definition for notes as markdown
augroup notes
    autocmd!
    autocmd BufRead,BufNewFile *.notes set filetype=markdown
    autocmd filetype markdown setlocal ai si expandtab shiftwidth=2
augroup END

" group definition for latex files
" automatically create a Makefile?
augroup latex
    autocmd!
    autocmd BufRead,BufNewFile *.tex set filetype=latex
    autocmd filetype latex nnoremap <F2> :!pdflatex %
augroup END
