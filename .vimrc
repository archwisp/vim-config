set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'   " required

" Install plugins
Plugin 'cwoac/nvim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'joonty/vdebug'
Plugin 'vim-scripts/dbext.vim'
Plugin 'vim-scripts/DBGp-Remote-Debugger-Interface'
Plugin 'vim-scripts/taglist.vim'
Plugin 'godlygeek/tabular'
Plugin 'MattesGroeger/vim-bookmarks'

" Plugin 'plasticboy/vim-markdown'
" Plugin 'git://github.com/fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
"
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
"
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" List the directory the current file resides in
noremap ,d :e %:p:h<CR>

" Override the filetype for .ts files
au BufRead,BufNewFile *.ts set filetype=javascript

let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
