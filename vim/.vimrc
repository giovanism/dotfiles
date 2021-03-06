set nocp		" 'compatible' is not set
filetype plugin on	" plugins are enabled

"colorscheme pablo
"colorscheme not found

"Git branch status line
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

"vim-pluh auto-installer
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd FileType java setlocal omnifunc=javacomplete#Complete

"vim-plug plugin lists
call plug#begin('~/.vim/plugins')
Plug 'artur-shaik/vim-javacomplete2'
call plug#end()

set laststatus=2

set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%#CursorColumn#
set statusline+=%-3.3n\                      " buffer number

set statusline+=%#FoldColumn#
set statusline+=%{StatuslineGit()}
set statusline+=%#MatchParen#
set statusline+=%f\                          " file name

set statusline+=%#LineNr#
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align

set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight

set statusline+=%#CursorColumn#
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
