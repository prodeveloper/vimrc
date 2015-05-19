set nocompatible              " be iMproved, required

set number "always show numbers
set smartcase "ignore case if pattern is lower
set autoindent
set tags=tags
set expandtab
set mouse=a
set history=10200
set showcmd "show partial commands in status line
set t_Co=256
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown spell
au BufNewFile,BufFilePre,BufRead *.raml set filetype=yaml foldmethod=indent
:set incsearch
:syntax on
:nnoremap <leader>nd :NERDTree<CR>
nnoremap j gj
set encoding=utf-8 "Necessary yo show Unicode glyphs
set hls
filetype plugin on
set nrformats= "treat all numbers as decimal
set clipboard=unnamedplus
"syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_php_checkers = ['php']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:vim_markdown_math=1
let g:easytags_async=1
set wildignore+=*\\vendor\\**
set runtimepath+=~/.vim/bundle/vim-snippets
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/xoria256.vim'
Plugin 'powerline/powerline'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'craigemery/vim-autotag'
Plugin 'spf13/PIV'

call vundle#end() 

"snippets configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsEnableSnipMate=1
let g:UltiSnipsEditSplit="vertical"

"Colors
colorscheme xoria256
"Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

"Tags
"Also show vendor tags
set tags+=./tags.vendors,tags.vendors
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>
