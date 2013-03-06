call pathogen#infect()


set autoindent
set softtabstop=4 
set shiftwidth=4 
set expandtab

let g:surround_{char2nr("p")} = "#{\r}"

"php syntax options {{{
let php_sql_query = 1 "for SQL syntax highlighting inside strings
let php_htmlInStrings = 1 "for HTML syntax highlighting inside strings
"let php_folding = 1 "for folding classes and functions
"" }}}

"NerdTree
map <silent> ` :NERDTreeToggle<CR>
"map <silent> ` :NERDTree<CR>
"map ` :call ToggleND()<CR>

function ToggleND()
    "if (!exists("t:NERDTreeBufName") || exists("b:NERDTreeType"))
    if (exists("b:NERDTreeType"))
        NERDTreeClose
    else 
        NERDTree
    endif
endfunction

"OmniCompete use updated php completion file
filetype plugin on
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
au FileType php set omnifunc=phpcomplete#CompletePHP
"au FileType java set omnifunc=javacomplete#Complete

"OmniCompete, move to Cntl+Space
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

"OmniCompete, close preview after function select
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"Ultisnips prefs
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"Ultisnips SuperTab prefs
let g:SuperTabDefaultCompletionType = "context"

"open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

