call pathogen#infect()

"NerdTree
map <silent> ` :NERDTreeToggle<CR>

"OmniCompete use updated php completion file
filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

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



