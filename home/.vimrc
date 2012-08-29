" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" Set shift keycodes for Mac OSX
" Note: you must configure these mappings in Terminal > Preferences > Keyboard
set <S-Right>=[shift]right
set <S-Left>=[shift]left
set <S-Up>=[shift]up
set <S-Down>=[shift]down

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

" exit insert mode and save
" imap :: <Esc>:w<CR>

" Auto-open NERDTree on vim start
au VimEnter *  NERDTree

" Paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

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

" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_map = '<Leader>t'
nmap <Leader>t <C-P>
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.git/ " Linux/MacOSX
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
	\ 'file': '\.sw[a-z]$\|\.so$',
	\ }
let g:ctrlp_user_command = 'find %s -type f' " MacOSX/Linux
call pathogen#helptags()
helptags ~/.vim/bundle/ctrlp.vim/doc

" Backspace Support
set backspace=indent,eol,start

""" Python Mode
" Enable python folding
let g:pymode_folding = 0

" Load run code plugin
let g:pymode_run = 1

" Disable pylint checking every save
let g:pymode_lint_write = 0

" Key for run python code
" let g:pymode_run_key = '<Leader>r'
let g:pymode_run_key = 'R'

" Load pylint code plugin
let g:pymode_lint = 1

" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 1

" Place error signs
let g:pymode_lint_signs = 1

" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1

" Load show documentation plugin
let g:pymode_doc = 1

" Key for show python documentation
let g:pymode_doc_key = 'K'

" Rope GOTO definition mapping
nmap <Leader>g <C-c>g

" Rope DOC show mapping
nmap <Leader>d <C-c>d

" Rope find all mapping
nmap <Leader>f <C-c>f

