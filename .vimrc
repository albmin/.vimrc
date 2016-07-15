set nocompatible              " be iMproved, required
filetype off                  " required

" Load vim-plug
 if empty(glob("~/.vim/autoload/plug.vim"))
     execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
 endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Plugs from Vundle migration 
Plug 'altercation/vim-colors-solarized'
"Plug 'godlygeek/tabular'   -- i think this fucks up yaml files, TODO set a
"rule to not activate plug on *.yaml 
Plug 'plasticboy/vim-markdown'

" Recommended Plugs
"Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-vinegar'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
"Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet.vim'
Plug 'garyburd/go-explorer'
Plug 'nsf/gocode'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'ekalinin/Dockerfile.vim'

" Add plugins to &runtimepath
call plug#end()

"autocompletion for neocomplete
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"



syntax enable

set background=dark

set t_Co=256

"let g:solarized_termcolors = 256
set number
"colorscheme solarized

let g:go_fmt_command="goimports"

let g:neocomplete#enable_at_startup = 1

"molokai sucks for golang
colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

"gotags bs
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

