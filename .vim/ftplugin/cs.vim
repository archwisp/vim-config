" Enable folding of class/function blocks
set foldmethod=syntax

" Set ctags filename
set tags=.cstags

" nnoremap ,tn :tabnew<CR> 

" Re-build ctags file
nnoremap ,t :!ctags --options=$HOME/.vim/ctags-options --languages=C\# -f .cstags<CR>

" Find references
nnoremap ,r :new <bar> :r!fgrep -Rn <C-r><C-w> . --exclude .cstags <CR>

" set makeprg=gcc\ %\ -o\ %:r
" set makeprg=gcc\ -g\ -O2\ %\ -o\ %:r
" set makeprg=gcc\ -ggdb\ %\ -o\ %:r
