syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
syntax on
"colorscheme desert
"set background=dark

 " Turn on the Wild menu
  set wildmenu
 
  " Ignore compiled files
  set wildignore=*.o,*~,*.pyc
   if has("win16") || has("win32")
  
  
       set wildignore+=.git\*,.hg\*,.svn\*
   else
       set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
   endif



call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'  " Example plugin

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


"Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

" Treat .ejs files as HTML for Emmet
autocmd BufRead,BufNewFile *.ejs set filetype=html

" Treat .jsx files as JavaScript or JSX for Emmet
autocmd BufRead,BufNewFile *.jsx set filetype=javascript.jsx

" Treat .js files as JavaScript or JS for Emmet
autocmd BufRead,BufNewFile *.js set filetype=javascript.jsx

" Treat .vue files as HTML for Emmet in template section
autocmd BufRead,BufNewFile *.vue set filetype=vue

" Angularjs where Typescript is used
autocmd BufRead,BufNewFile *.html set filetype=html
autocmd BufRead,BufNewFile *.ts set filetype=typescript

" For embedded html in php
autocmd BufRead,BufNewFile *.php set filetype=php

" For pug files similar to ejs used as embedded js
autocmd BufRead,BufNewFile *.pug set filetype=pug

" For .xml files
autocmd BufRead,BufNewFile *.xml set filetype=xml




let g:UltiSnipsSnippetDirectories = ['~/.vim/plugged/ultisnips/snippets']


