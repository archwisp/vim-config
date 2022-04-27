" Enable folding of class/function blocks
set foldmethod=syntax

" Set ctags filename
set tags=.jstags

" Re-build ctags file
nnoremap ,t :!ctags --options=$HOME/.vim/ctags-options --languages=JavaScript -f .jstags<CR>

" Execute script via CLI
" nnoremap ,r :!rhino %<CR>

" Find references
nnoremap ,r :new <bar> :r!fgrep -Rn <C-r><C-w> . --exclude .jstags --exclude .git --exclude .vim-bookmarks <CR>
