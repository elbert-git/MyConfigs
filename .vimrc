syntax on
set number
set relativenumber
set cursorline
set cursorcolumn
set autoindent
set smartindent
set incsearch

set softtabstop=2
set shiftwidth=2
set tabstop=2

set linebreak
set ruler

set listchars=tab:\|\ 
set list
 
set nowrap
 
"tmux setup 
"set t_Co=256

"---- key remaps-----
"maps ii to escape insert mode
imap ii <Esc>

"below maps ss to save file
nnoremap ss :update<cr>

"completing brackets
":inoremap ( ()<Esc>i
":inoremap [ []<Esc>i
":inoremap { {}<Esc>i

"removes arrow controls
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

"-----tmux colour fix----- (deprecated)
"if &term =~ '256color'
"  " disable Background Color Erase (BCE) so that color schemes
"  " render properly when inside 256-color tmux and GNU screen.
"  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
"  set t_ut=
"endif

"----Plug Plugin Manager----
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
"Plug 'kjwon15/vim-transparent'
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
call plug#end()
"colorscheme dracula

"-----CoC configs-----
" Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
 inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"-------Gruvbox colour config------
autocmd vimenter * colorscheme gruvbox
:set bg=dark

"------- emmet config -----
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"------- vimwiki config -----
set nocompatible
filetype plugin on
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

"-----NerdTree configs-----
map <C-n> :NERDTreeToggle<CR>
set laststatus=2

