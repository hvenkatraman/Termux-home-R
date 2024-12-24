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
"For .html.js .jsx .css.ejs .php

Plug 'mattn/emmet-vim'  " Example plugin

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install --frozen-lockfile --production',
      \ 'branch': 'release/0.x'
    \ }



"For python .py

" Python-related plugins
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'

" General plugins
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'Vimjas/vim-python-pep8-indent'



Plug 'junegunn/vim-plug'
Plug 'StanAngeloff/php.vim'
Plug 'vim-php/phpctags'
Plug 'sheerun/vim-polyglot'
Plug 'jwalton512/vim-blade'
Plug 'neoclide/coc.nvim'
call plug#end()

let g:php_version_id = 70300

" Coc.nvim configuration
" Add your Coc.nvim configuration here



"For Vim-LSP

" Plug 'prabirshrestha/vim-lsp'


" Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" Map Space to the leader key
let mapleader=" "

" Map <Leader>e to toggle NERDTree
nnoremap <leader>e :NERDTreeToggle<CR>

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Key bindings
nmap <leader>p :Prettier<CR>

"LSP Configurations & keymaps
"
" au User lsp_setup call lsp#register_server({
"     \ 'name': 'pylsp',
"     \ 'cmd': {server_info -> ['pylsp']},
"     \ 'allowlist': ['python']
" \ }

" nnoremap <leader>dd :LspDocumentDiagnostics<CR>
" nnoremap <leader>rn :LspRename<CR>
" nnoremap <leader>gd :LspDefinition<CR>
" nnoremap <leader>gi :LspImplementation<CR>
" nnoremap <leader>gr :LspReferences<CR>)

" let g:lsp_format_sync_timeout = 1000
" autocmd! BufWritePre * LspDocumentFormatSync


