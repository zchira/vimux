set t_Co=256
set t_ut=

if has("termguicolors")
   set termguicolors
endif

syntax on

" highlight last search
set hlsearch

set encoding=utf-8
set list
set listchars=tab:▸\ ,eol:¬
set number
colorscheme minimalist
set tabstop=4

" gr comman for find all references of current word
nnoremap gr :vimgrep <cword> **/*.html **/*.py<CR>:cw<CR>
nnoremap <F7> :cp<CR>
nnoremap <F8> :cn<CR>
