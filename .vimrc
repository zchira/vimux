set t_Co=256
set t_ut=

" highlight last search
set hlsearch

set encoding=utf-8

set list
set listchars=tab:▸\ ,eol:¬,trail:·

set number

colorscheme distinguished
" colorscheme molokai
" colorscheme spring-night

set tabstop=4

syntax on

if has("termguicolors")
   set termguicolors
endif

" gr comman for find all references of current word
nnoremap gr :vimgrep <cword> **/*.html **/*.py<CR>:cw<CR>
nnoremap <F7> :cp<CR>
nnoremap <F8> :cn<CR>
