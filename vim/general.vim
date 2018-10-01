"----key binding
source ~/Dropbox/.config/vim/key_binding.vim

"----plugin
source ~/Dropbox/.config/vim/plugin.vim

"----python
source ~/Dropbox/.config/vim/python.vim

"----Plugink
source ~/Dropbox/.config/vim/plugin_config.vim
"----set up color
"colorscheme shine
"colorscheme kalisi
"colorscheme lucius
"colorscheme solarized
colorscheme wombat
"colorscheme simplifysimplify-light
"colorscheme simplifysimplify-dark

"---- general
syntax on
set number
set relativenumber            
filetype on
set hlsearch
set guioptions=TrLm
set guioptions-=m
set guioptions-=T

"-----------------configure the string code--------------------
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set encoding=utf-8

"---- Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 14
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h16:cANSI
  endif
endif


