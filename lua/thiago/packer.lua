-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'windwp/nvim-spectre'
  use 'tpope/vim-projectionist'
  use 'phoenixframework/tree-sitter-heex'

  -- To improve buffer deletion
  use {'ojroques/nvim-bufdel'}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

  use({
    'morhetz/gruvbox',
    as = 'gruvbox',
  })
  use 'folke/tokyonight.nvim'

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Bookmark
  use('MattesGroeger/vim-bookmarks')

  -- FZF
  use {
    'ibhagwan/fzf-lua', branch = 'main',
    requires= { {'nvim-tree/nvim-web-devicons'} }
  }

  -- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
  use('nvim-treesitter/nvim-treesitter-context')
  use('kyazdani42/nvim-web-devicons')
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

	use('mbbill/undotree')
	use('tpope/vim-fugitive')
  use('shumphrey/fugitive-gitlab.vim')
  use('tveskag/nvim-blame-line')
  use('Yggdroot/indentLine')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
      {'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

  use('voldikss/vim-floaterm')
  use('preservim/nerdcommenter')
  use('mg979/vim-visual-multi')
  use('preservim/vimux')
  use('pgr0ss/vimux-ruby-test')
  use('christoomey/vim-tmux-navigator')
  use('vim-test/vim-test')
  use('thiagoramos23/jump-to-test-file')

  -- Airline
  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')

  -- GitGutter
  --use('airblade/vim-gitgutter')
  --GitSigns
  use {
    'lewis6991/gitsigns.nvim'
  }

  -- GIT WORKTREE
  use { 'ThePrimeagen/git-worktree.nvim' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'nvim-lua/popup.nvim' } 

  use('neoclide/coc.nvim', {branch =  'release', run = 'yarn install --frozen-lockfile'})
end)



