" Enable folding of class/function blocks
set foldmethod=syntax

" Set ctags filename
set tags=.ctags

" Re-build ctags file
nnoremap ,t :!ctags --options=$HOME/.vim/ctags-options --languages=C,C++ -f .ctags<CR>

" set makeprg=gcc\ %\ -o\ %:r
" set makeprg=gcc\ -g\ -O2\ %\ -o\ %:r
set makeprg=gcc\ -ggdb\ %\ -o\ %:r

" nnoremap ,r :new <bar> :r!fgrep -Rn <C-r><C-w> . --exclude .ctags --exclude .git --exclude .vim-bookmarks --exclude *.swp<CR>
