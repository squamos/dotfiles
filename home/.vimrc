call pathogen#infect()
call pathogen#helptags()

syntax on

filetype plugin indent on

" autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" Set shift keycodes for Mac OSX
" Note: you must configure these mappings in Terminal > Preferences > Keyboard
set <S-Right>=[shift]right
set <S-Left>=[shift]left
set <S-Up>=[shift]up
set <S-Down>=[shift]down

" Window movements; I do this often enough to warrant using up M-arrows on
" this"
"noremap <M-Right> <C-W><Right>
"noremap <M-Left> <C-W><Left>
"noremap <M-Up> <C-W><Up>
"noremap <M-Down> <C-W><Down>

nmap <S-Right> <C-W><Right>
imap <S-Right> <Esc><C-W><Right>
nmap <S-Left> <C-W><Left>
imap <S-Left> <Esc><C-W><Left>
nmap <S-Up> <C-W><Up>
imap <S-Up> <Esc><C-W><Up>
nmap <S-Down> <C-W><Down>
imap <S-Down> <Esc><C-W><Down>

" Shortcut to exit insert mode
imap ;; <Esc>

" Auto-open NERDTree on vim start
au VimEnter *  NERDTree

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" exit insert mode and save
" imap :: <Esc>:w<CR>

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

set tag=tags,./tags;

let g:easytags_cmd = '/opt/local/bin/ctags'
let g:easytags_dynamic_files = 1
let g:easytags_auto_update = 0

"Higlight current line only in insert mode
"autocmd InsertLeave * set nocursorline
"autocmd InsertEnter * set cursorline

"Highlight cursor
"highlight CursorLine ctermbg=8 cterm=NONE

"Case insensitive search
set ignorecase

"Smart search (ignore caps for if all lowercab)
set smartcase

"Incremental search
set incsearch

"Supertab completion is context based
"let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"let g:SuperTabContextDiscoverDiscovery =
"	\ ["&omnifunc:<c-x><c-o>", "&completefunc:<c-x><c-u>"]
"
"autocmd FileType *
"  \ if &omnifunc != '' |
""  \   call SuperTabChain(&omnifunc, "<c-p>") |
"  \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
"  \ endif

" JSON Formatting
au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source ~/.vim/ftplugin/json.vim

set encoding=utf-8

" Color column 80
if exists('+colorcolumn')
  set colorcolumn=80
  highlight ColorColumn ctermbg=darkgrey
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


