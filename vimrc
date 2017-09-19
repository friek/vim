syntax on
set background=dark
set ai

" Line numbering
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" python file config
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set et
autocmd BufRead *.py set ts=4
autocmd BufRead *.py set sts=4
autocmd BufRead *.py set ai

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
