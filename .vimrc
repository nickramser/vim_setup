call pathogen#infect()


set autoindent
set copyindent
set softtabstop=4 
set shiftwidth=4 
set expandtab 

"php syntax options {{{
let php_sql_query = 1 "for SQL syntax highlighting inside strings
let php_htmlInStrings = 1 "for HTML syntax highlighting inside strings
"let php_folding = 1 "for folding classes and functions
"" }}}

"NerdTree
map <silent> ` :NERDTreeToggle<CR>

"OmniCompete use updated php completion file
filetype plugin on
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


autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" " buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
    if winnr("$") == 1
    q
    endif
    endif
    endif
    endfunction

