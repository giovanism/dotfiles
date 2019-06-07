" set colorscheme
colorscheme ron

" vim-plug plugins
call plug#begin()

"Airline stuff
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme                       = 'kolor'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_enable_branch               = 1
let g:airline_enable_syntastic            = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_symbols = {'space': ' ', 'paste': 'PASTE', 'maxlinenr': '',
			\'notexists': 'Ɇ', 'crypt': '🔒', 'linenr': '', 'readonly': '',
			\'spell': 'SPELL', 'modified': '+', 'keymap': 'Keymap: ',
			\'ellipsis': '...', 'branch': '', 'whitespace': '☲'}

"LaTeX stuff
Plug 'donRaphaco/neotex', { 'for': 'tex' }

"Typescript stuff
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

"fzf stuff
Plug 'junegunn/fzf.vim'

"Deoplete stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

"LanguageServer stuff
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

let g:LanguageClient_rootMarkers = {
    \ 'go': ['.git', 'go.mod'],
    \ }

"Go stuff
let g:LanguageClient_serverCommands = {
    \ 'go': ['gopls'],
    \ 'java': ['jdtls', '-data', getcwd()],
    \ 'python': ['pyls'],
    \ }

autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

call plug#end()

"Tab settings
set expandtab
set shiftwidth=2
set tabstop=4

"Mouse settings
set mouse=a

"Other options
set number relativenumber
