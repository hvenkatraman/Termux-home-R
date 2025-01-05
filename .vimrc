syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
syntax on
"colorscheme gruvbox
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

Plug 'mattn/emmet-vim'  

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


"Php tags & misc

Plug 'StanAngeloff/php.vim'
Plug 'vim-php/phpctags'
Plug 'sheerun/vim-polyglot'
Plug 'jwalton512/vim-blade'
Plug 'neoclide/coc.nvim'


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'


Plug 'hrsh7th/vim-vsnip'

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


"autocomplete plug

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }

call plug#end()





"Colour theme settings

" Plug 'morhetz/gruvbox'
" Plug 'altercation/vim-colors-solarized'
" Plug 'dracula/vim', { 'as': 'dracula' }

" call plug#end()

" syntax enable
" set background=dark
" colorscheme gruvbox " Change this to your preferred theme


" syntax enable
" set background=dark " or light
" colorscheme solarized


" syntax enable
" colorscheme dracula



"call plug#end()


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


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"



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

" Customize coc.nvim colors
" hi Pmenu guibg=#3c3836 guifg=#ebdbb2
" hi PmenuSel guibg=#504945 guifg=#fbf1c7
" hi PmenuSbar guibg=#3c3836
" hi PmenuThumb guibg=#504945

" Files
nnoremap <silent> <leader>f :Files<CR>
" Buffers
nnoremap <silent> <leader>b :Buffers<CR>
" Recently opened files
nnoremap <silent> <leader>r :History<CR>
" Help tags
nnoremap <silent> <leader>h :Helptags<CR>
" Grep with Ag
nnoremap <silent> <leader>g :Rg<CR>

" Set the background color of the popup menu
highlight Pmenu guibg=#282828 guifg=#ebdbb2 ctermfg=white ctermbg=black

" Set the background color of the selected item in the popup menu
highlight PmenuSel guibg=#458588 guifg=#1d2021 ctermfg=black ctermbg=cyan

" Set the background color of the popup menu scrollbar
highlight PmenuSbar guibg=#3c3836

" Set the background color of the popup menu thumb
highlight PmenuThumb guibg=#fabd2f
