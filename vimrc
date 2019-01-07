set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line

augroup filetype
autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end 

set ts=4
set nu
set enc=utf-8
set sw=4
set sts=4
set tw=100
set expandtab
retab

" NERDTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"NerdTree {
     if isdirectory(expand("~/.vim/bundle/nerdtree"))
         "map <C-e> <plug>NERDTreeToggle<CR>
         map <C-e> :NERDTreeToggle<CR>
         map <leader>e :NERDTreeFind<CR>
         nmap <leader>nt :NERDTreeFind<CR>

         let NERDTreeShowBookmarks=1
         let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$','^\.svn$', '\.bzr$']
         let NERDTreeChDirMode=0
         let NERDTreeQuitOnOpen=1
         let NERDTreeMouseMode=2
         let NERDTreeShowHidden=1
         let NERDTreeKeepTreeInNewTab=1
         let g:nerdtree_tabs_open_on_gui_startup=0
         let NERDTreeNodeDelimiter = "\t"
     endif
"}
