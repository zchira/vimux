set t_Co=256
set t_ut=

" highlight last search
set hlsearch

set encoding=utf-8

set list
set listchars=tab:▸\ ,eol:¬,trail:·

set number

" colorscheme distinguished
" colorscheme spring-night

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set expandtab

syntax on

" set hlsearch and incsearch
set hls is

if has("termguicolors")
   set termguicolors
endif

set wildignore+=node_modules/**,dist/**

" gr comman for find all references of current word
" nnoremap gr :vimgrep <cword> **/*.html **/*.py **/*.js **/*.vue<CR>:cw<CR>
nnoremap gr :Gitgrep <cword><CR>
nnoremap <F7> :cp<CR>
nnoremap <F8> :cn<CR>
" tagbar
nmap <leader>t :TagbarToggle<CR>
" fzf commands
nnoremap <leader>f :Files<CR>
nnoremap <leader>l :Buffers<CR>
nnoremap <leader>g :GFiles?<CR>
" toggle nerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

" vim-plug section
call plug#begin('~/.vim/plugged')

" python-mode
" Plug 'https://github.com/python-mode/python-mode.git'
" Plug 'klen/python-mode'

"  Plug 'andviro/flake8-vim'
" Plug 'w0rp/ale'

" polyglot syntax highlight for all langs
Plug 'sheerun/vim-polyglot'

" eslint
Plug 'dense-analysis/ale'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'

" nerd tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" themes
Plug 'ayu-theme/ayu-vim'
Plug 'exitface/synthwave.vim'
Plug 'elmindreda/vimcolors'
Plug 'JarrodCTaylor/spartan'
Plug 'tomasiser/vim-code-dark'

" tagbar
Plug 'majutsushi/tagbar'

" ack
" Plug 'mileszs/ack.vim'
Plug 'yegappan/grep'
call plug#end()

" let g:pymode_folding = 0

" ESlint 
" call <Plug>ALEComplete

" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'

nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)


" colorscheme synthwave
" colorscheme distinguished
colorscheme codedark
set colorcolumn=80

" no beep
set noeb vb t_vb=
