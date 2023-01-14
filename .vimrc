set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab

" Folding
set foldmethod=syntax
set foldlevel=99

" Disable all bells and whistles
set noerrorbells visualbell t_vb=

" Delete empty space from the end of lines on every save
autocmd BufWritePre * :%s/\s\+$//e

set hlsearch
nnoremap <leader>q :noh<CR>

" set number
set number relativenumber
set ruler
set numberwidth=4

" status line
set laststatus=2

set list
set guifont=Menlo:h17
set colorcolumn=90

nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-h> :tabprev<CR>

" assign filename to clipboard
:command! CbFn let @+ = expand('%')

set nowrap
set ignorecase
set smartcase
set incsearch

set splitbelow
set splitright


" NERDTree
map <C-n> :NERDTreeToggle<CR>

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<leader><leader>'
let g:ctrlp_working_path_mode=0
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git$\|tmp\|packs-test|\uploads'

" Ale
let g:ale_linters = {
  \ 'ruby': ['rubocop'],
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'typescriptreact': ['eslint']
  \}
let g:ale_linters_explicit = 1
let g:ale_fixers = {
  \ 'ruby': ['rubocop'],
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'typescriptreact': ['eslint']
  \}
"let g:ale_fix_on_save = 1
let g:ale_sign_error = '••'
let g:ale_set_highlights = 0

" typescript-vim
let g:typescript_compiler_binary = 'yarn tsc'

if has('gui_running')
  set background=light
  colorscheme solarized8
endif

runtime macros/matchit.vim
call pathogen#infect()
syntax on
filetype plugin indent on
