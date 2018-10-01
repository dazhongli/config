nmap <silent> <F7> :call ToggleSpell()<CR>
"This line below disable the arrow keys inside the vim for practice with Vim.
"disable the up and down arrow
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"-----------------General configuration ----------------------
:let mapleader = "," 
nmap <silent> ,/ :nohlsearch<CR>
"----remap ; to : and press ; twice to get a actual ;
nnoremap ; :
noremap ;; ;
imap jk <Esc>
imap kj <Esc>
nmap <silent> <F7> :call ToggleSpell()<CR>

"-------------------The following disable the back-up files
set noundofile
set nobackup
set noswapfile
set wildmenu

"----Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"----clear the serach results
nmap <silent> ,/ :nohlsearch<CR>

"----using <Tab> for the indent
nnoremap <Tab> >>_
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

"----map the moving with the leader key
 map <leader>h :wincmd h<CR>
 map <leader>j :wincmd j<CR>
 map <leader>k :wincmd k<CR>
 map <leader>l :wincmd l<CR>

"----Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"---Python
nnoremap <buffer> <F9> :exec '!ipython' shellescape(@%, 1)<cr>

"----------------------------------------------------------------------
" If buffer modified, update any 'Last modified: ' in the first 20 lines.
" 'Last modified: ' can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
          \ strftime('%a %d %b %Y') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()
"---------------------------------------------------------------------

 "------------------------config spell check
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u
let b:myLang=0
let g:myLangList=["nospell","de_de","en_gb"]
function! ToggleSpell()
  let b:myLang=b:myLang+1
  if b:myLang>=len(g:myLangList) | let b:myLang=0 | endif
  if b:myLang==0
    setlocal nospell
  else
    execute "setlocal spell spelllang=".get(g:myLangList, b:myLang)
  endif
  echo "spell checking language:" g:myLangList[b:myLang]
endfunction
"----------------------config the key binding here------------------
nmap <silent> <F7> :call ToggleSpell()<CR>
