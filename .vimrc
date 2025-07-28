" beginnings of the most excellent vimrc ever
" icedwater said somewhat humbly

""" sections under such lines are from modern vim (isbn: 978-1-68050-262-6)
set background=dark

set smartindent
set autoindent

" tabbing, python style
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" line numbers
set number

" split to the right and down
set splitbelow
set splitright

" testing stuff from
" thoughtbot/dotfiles on github
set ruler
set autowrite

" highlight what you've been searching for
set hlsearch

filetype indent on
filetype plugin on

""" undofile
set undofile
set undodir=$HOME/.vim/undo

""" minimal package manager for vim
packadd minpac
call minpac#init()

command! MinUp call minpac#update()
command! MinClean call minpac#clean()

""" pre-configure ALE here
let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 20
let g:ale_cursor_detail = 1
let g:ale_echo_delay = 250
let g:ale_completion_delay = 250

""" here's a list of plugins minpac manages
""" yes, none - they were all moved to use vim native plugins

""" colour schemes
""" dogrun, also using vim native plugins

""" mappings for fzf
nnoremap <C-p> :<C-u>FZF<CR>

""" async lint engine
let g:ale_linters = {
    \ "javascript": ["eslint"],
    \ "python": ["pylint"],
    \}
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 600

" iamcco/markdown-preview.nvim
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_combine_preview = 1
let g_mkdp_markdown_css = expand("~/.local/lib/markdown-css/github-markdown-dark.css")

" vimwiki/vimwiki
" I use .md for other stuff and I don't want it to be flagged as a vimwiki
let g:vimwiki_list = [{"path": expand("~/vimwiki"), "syntax": "markdown", "ext": ".wiki"}]
let g:vimwiki_ext2syntax = {".wiki": "markdown"}
let g:vimwiki_markdown_link_ext = 1

" preservim/vim-markdown
let g:markdown_folding = 1

"""""" below is the autocmd stuff

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

""" noundofile for /tmp/* stuff
augroup vimrc
    autocmd!
    autocmd BufWritePre /tmp/* setlocal noundofile
augroup END

"" colorscheme
colorscheme dogrun
