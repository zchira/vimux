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
nnoremap gr :vimgrep <cword> **/*.html **/*.py **/*.js **/*.vue<CR>:cw<CR>
nnoremap <F7> :cp<CR>
nnoremap <F8> :cn<CR>
" fzf commands
nnoremap <leader>f :Files<CR>
nnoremap <leader>l :Buffers<CR>
nnoremap <leader>g :GFiles?<CR>
" toggle nerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

" vim-plug section
call plug#begin('~/.vim/plugged')

" vim-jedi
Plug 'https://github.com/davidhalter/jedi-vim.git'

" python-mode
" Plug 'https://github.com/python-mode/python-mode.git'
" Plug 'klen/python-mode'

Plug 'andviro/flake8-vim'
" Plug 'w0rp/ale'

" Javascript-liraries
Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'darthmall/vim-vue'
Plug 'othree/yajs.vim'

" eslint
Plug 'sekel/vim-vue-syntastic'
Plug 'vim-syntastic/syntastic'
Plug 'posva/vim-vue'


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
call plug#end()

" let g:pymode_folding = 0

" ESlint 
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
endif

" colorscheme synthwave
" colorscheme distinguished
colorscheme codedark
set colorcolumn=80
