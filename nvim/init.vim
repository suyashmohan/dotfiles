" general settings
" ================

" enables syntax highlighting
syntax on
" Better colors
set termguicolors
" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab
" enable autoindents
set smartindent
" number of spaces used for autoindents
set shiftwidth=4
" adds line numbers
set number
set relativenumber
" columns used for the line number
set numberwidth=4
" highlights the matched text pattern when searching
set incsearch
set nohlsearch
" open splits intuitively
set splitbelow
set splitright
" navigate buffers without losing unsaved work
set hidden
" start scrolling when 8 lines from top or bottom
set scrolloff=8
" Save undo history
set undofile
" Enable mouse support
set mouse=a
" case insensitive search unless capital letters are used
set ignorecase
set smartcase
"
set noshowmode
set signcolumn=number

" plugins
" =======

call plug#begin('~/.config/nvim/plugged')
" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
" vim-fugitive
Plug 'tpope/vim-fugitive'
" gitsigns
Plug 'lewis6991/gitsigns.nvim'
" LSP
Plug 'neovim/nvim-lspconfig'
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Lightline
Plug 'itchyny/lightline.vim'
" One Half Color Theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

" declare your color scheme
colorscheme onehalfdark

" load lua config
lua require('suyash')

" remaps
nnoremap <leader>p :Telescope find_files<Cr>
nnoremap <leader>b :Telescope buffers<Cr>
nnoremap <leader>f :NERDTreeToggle<Cr>

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

