"----Nerdtree
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

function! PandocToPdf()
	let template='/home/dazhong/Dropbox/Software/vim80/Pandoc/PDF_template/eisvogel.latex'
	let bib='~/Dropbox/Software/vim08/Pandoc/03Bibliography/result.bib'
	let csl_file='~/Dropbox/Software/vim08/Pandoc/03Bibliography/styles/water-environment-research.csl'
	let file_input=shellescape(expand('%:t'),1)
	let file_output=shellescape(expand('%:r'),1).'.pdf'
	"execute '!pandoc '.file_input.' --template='.template.' --bibliography= '.bib. ' -o ' . file_output.' --listings'.' --number-sections'.' --toc'
	execute '!pandoc '.file_input.' --template='.template. ' -o ' . file_output.' --listings'.' --number-sections'.' --toc'
	"execute '!pandoc '.file_input.' --template='.template. ' -o ' . file_output
	execute "!".'xdg-open '.file_output
endfunction
nnoremap <leader>mp :call PandocToPdf()<cr>

"convert the markdown to docx
function! PandocToDocx()
	let template = $home.'\Dropbox\Software\vim80\Pandoc\DOC_template\arup_note.docx'
	let file_input = shellescape(expand('%:t'),1)
	let file_output = shellescape(expand('%:r'),1).'.docx'
	execute "!pandoc ".file_input.' --reference-doc='.template.' -o ' . file_output 
	execute "!".file_output
endfunction
nnoremap <leader>md :call PandocToDocx()<cr>

"---Nerdtree
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinPos="left"
let NERDTreeShowBookmarks=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

"enable markdown functionality
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#keyboard#use_default_mappings= 1

