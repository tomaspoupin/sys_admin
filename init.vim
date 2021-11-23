syntax on
set sw=4
set expandtab
set smartindent
set number
set numberwidth=1
set hidden
set shortmess+=c
set signcolumn=yes
set nowrap
set noswapfile
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set incsearch
set encoding=UTF-8
set cursorline
set termguicolors
set ignorecase

set colorcolumn=120
highlight ColoColumn ctermbg=0  guibg=lightgrey

call plug#begin('~/.local/share/nvim/plugged')

"themes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'gosukiwi/vim-atom-dark'

"plugins
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'her/synicons.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'joshdick/onedark.vim'
Plug 'puremourning/vimspector'

call plug#end()

let mapleader=" "

"remappings
nnoremap <leader>h :bp<CR>
nnoremap <leader>l :bn<CR>
nnoremap <leader>d :bp<bar>sp<bar>bn<bar>bd<CR>

"themes configuration
let g:cpp_class_scope_highlight = 1
let g:molokai_original = 1
colorscheme onedark

" vimspector configuration
let g:vimspector_enable_mappings = 'HUMAN'

"coc configuration
"" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"NERD Tree configuration
map <F2> :NERDTreeToggle<CR>

"airline configuration
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"fzf configuration
nnoremap <leader>o :FZF<CR>
