" set the runtime path to include Vundle and initialize
if has('win32')
	set rtp+=$HOME/OneDrive/04-Soft/08-vim/vimfiles/bundle/Vundle.vim/
else
	set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()
"call vundle#begin('$HOME/OneDrive/04-Soft/08-vim/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"it appear the table feature slows down vim considerably
Plugin 'dhruvasagar/vim-table-mode' 
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'ascenator/L9', {'name': 'newL9'}
"Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'plasticboy/vim-markdown'
"Plugin 'davidhalter/jedi-vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax' 
Plugin 'tpope/vim-surround'
Plugin 'suan/vim-instant-markdown'
Plugin 'KabbAmine/lazyList.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tell-k/vim-autopep8'
if has('unix')
Plugin 'vim-latex/vim-latex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'python-mode/python-mode'
endif
"Plugin 'gabrielelana/vim-markdown'
" All of your Plugins must be added before the following line
call vundle#end()            " required
