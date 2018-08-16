" set colorscheme
colorscheme pablo

" vim-plug plugins
call plug#begin()

"Deoplete stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

"Airline stuff
Plug 'vim-airline/vim-airline'

call plug#end()

"Tab settings
set expandtab
set shiftwidth=4
set tabstop=4

