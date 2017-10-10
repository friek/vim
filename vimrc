syntax on
set background=dark
set ai
" See also http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

" Line numbering
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

if has("autocmd")
	  filetype plugin indent on

	" python file config
	autocmd BufRead,BufNewFile *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
	autocmd BufRead,BufNewFile *.py set et
	autocmd BufRead,BufNewFile *.py set ts=4
	autocmd BufRead,BufNewFile *.py set sts=4
	autocmd BufRead,BufNewFile *.py set ai
endif

" load pathogen plugin management
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Set updatetime to 250ms, so git gutter updates swiftly.
set updatetime=250

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
