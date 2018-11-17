
"----------------PlugInstall end here-----------------------------------
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:pymode_run_bind = '<leader>r' 
let g:pymode_folding = 1
let g:pymode_run =1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_lint_on_write=1
let g:pymode_doc_bind = 'K'

let g:pymode_python = 'python3'
nnoremap <buffer> <F9> :exec '!ipython' shellescape(@%, 1)<cr>
