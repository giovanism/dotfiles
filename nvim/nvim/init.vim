" set colorscheme
colorscheme ron

" vim-plug plugins
call plug#begin()

"LanguageServer stuff
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ }

let g:LanguageClient_serverCommands = {
    \ 'java': ['jdtls', '-data', getcwd()],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"Deoplete stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

"Airline stuff
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme             = 'kolor'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

"LaTeX stuff
Plug 'donRaphaco/neotex', { 'for': 'tex' }

call plug#end()

"Tab settings
set expandtab
set shiftwidth=2
set tabstop=4

