set t_Co=256
set t_ut=

" highlight last search
set hlsearch

set encoding=utf-8

set list
set listchars=tab:▸\ ,eol:¬,trail:·

" set hlsearch and incsearch
" set hls is <-- fixed by sensible

" backspace fix
" set backspace=indent,eol,start <-- fixed by sensible

set number

" colorscheme distinguished
" colorscheme spring-night

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set expandtab

syntax on


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
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'

" defaults
Plug 'tpope/vim-sensible'

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
" to generate ctags for git only files: git ls-files | ctags --links=no -L-
Plug 'majutsushi/tagbar'

" ack
Plug 'yegappan/grep'
call plug#end()

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)


" colorscheme synthwave
" colorscheme distinguished
colorscheme codedark
set colorcolumn=80

" no beep
set noeb vb t_vb=

" system clipboard usage in vim (default '+' register)
set clipboard=unnamed
set clipboard=unnamedplus


autocmd FileType json syntax match Comment +\/\/.\+$+
" Coc

let g:coc_global_extensions = ['coc-emoji', 'coc-eslint', 'coc-prettier','coc-tsserver', 'coc-tslint', 'coc-tslint-plugin', 'coc-css', 'coc-json', 'coc-pyls', 'coc-yaml', 'coc-vetur']

" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
" set signcolumn=yes

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>[g <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>]d <Plug>(coc-definition)
nmap <silent> <leader>]t <Plug>(coc-type-definition)
nmap <silent> <leader>]i <Plug>(coc-implementation)
nmap <silent> <leader>]r <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Formatting selected code.
xmap <leader>]f  <Plug>(coc-format-selected)
nmap <leader>]f  <Plug>(coc-format-selected)

