if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Terminal
  Plug 'akinsho/toggleterm.nvim'

  " Collection of common configurations of the Nvim LSP client
  Plug 'neovim/nvim-lspconfig'
  Plug 'onsails/lspkind-nvim'

  "luasnip
  "Plug 'L3MON4D3/LuaSnip'

  " Linting
  Plug 'mfussenegger/nvim-lint'

  " Improve UI
  Plug 'glepnir/lspsaga.nvim'

  " Completion framework
  Plug 'hrsh7th/nvim-cmp'

  " LSP completion source for nvim-cmp
  Plug 'hrsh7th/cmp-nvim-lsp'

  " LSP completion source for nvim-cmp
  Plug 'hrsh7th/cmp-vsnip'

  " Other usefull completion sources
  " See hrsh7th's other plugins for more completion sources!
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-buffer'

  " Snippet engine
  Plug 'hrsh7th/vim-vsnip'

  " Fuzzy finder
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
 
  " treesitter
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': 'TSUpdate' }

  " nvim-tree
  Plug 'kyazdani42/nvim-tree.lua'
 
  " Icons
  Plug 'kyazdani42/nvim-web-devicons'

  " bufferline
  Plug 'akinsho/bufferline.nvim'

  " Color scheme
  Plug 'morhetz/gruvbox'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'dracula/vim', { 'as': 'dracula' }

  " Automatic quote and bracket completion
  "Plug 'jiangmiao/auto-pairs'
  Plug 'windwp/nvim-autopairs'

  " Comment plugin
  Plug 'scrooloose/nerdcommenter'

  " statusline
  Plug 'nvim-lualine/lualine.nvim'

  " Better syntax-highlighting for filetype ins fim
  Plug 'sheerun/vim-polyglot'

  " Formatter
  Plug 'sbdchd/neoformat'

  " Extras
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'folke/lsp-colors.nvim'
  Plug 'untitled-ai/jupyter_ascending.vim'

endif

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()
