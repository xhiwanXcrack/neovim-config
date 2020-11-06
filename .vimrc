call plug#begin('~/.config/nvim/plugged')

" Tema text editor
Plug 'sainnhe/vim-color-forest-night'
Plug 'sickill/vim-monokai'
Plug 'Pandas-ID/vim-pandas-monokai'

" A commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" A file explores
Plug 'preservim/nerdtree'

" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more.
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Callback
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'pangloss/vim-javascript'

Plug 'Yggdroot/indentLine'

Plug 'vim-python/python-syntax'

Plug 'captbaritone/better-indent-support-for-php-with-html'

call plug#end()

"Tampilan
colorscheme pandas-monokai
set termguicolors
set laststatus=2
" Menampilkan nomor baris
set number                                                        " Menampilkan nomor baris secata relative
set relativenumber
" Menampilkan perintah yang dimasukan
set showcmd
" Menyemnunyikan mode neovim
set noshowmode
" Menyorot baris pada cursor
set cursorline

set encoding=utf8

" Text formating
" Bungkus text
set wrap
set expandtab                                           
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set conceallevel=0

set showtabline=2

let g:python_highlight_all = 1



map <C-n> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-s> :w! <CR>
map <C-p> :Buffers <CR>
map <C-f> :Files <CR>


autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType vim setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType python setlocal shiftwidth=4 tabstop=4 wrap formatoptions+=t
autocmd FileType php setlocal shiftwidth=2 softtabstop=2 tabstop=2


runtime! plugin-config/*vim
