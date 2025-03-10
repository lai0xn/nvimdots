-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use({ "spaceduck-theme/nvim", as = "spaceduck" })
use { 
  'olivercederborg/poimandres.nvim',
  config = function()
    require('poimandres').setup {
      -- leave this setup function empty for default config
      -- or refer to the configuration section
      -- for configuration options
    }
  end
}
use 'fatih/vim-go'
use 'luisiacc/gruvbox-baby'
use({
    "stevearc/conform.nvim",
  })
  use 'Yazeed1s/oh-lucy.nvim'
  use {
  'L3MON4D3/LuaSnip',
  requires = 'rafamadriz/friendly-snippets', -- Optional: pre-defined snippets
	}
  use {"akinsho/toggleterm.nvim"}
  use {
    "williamboman/mason.nvim"
  }
  use {
    'nvim-flutter/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
}
  use {"sho-87/kanagawa-paper.nvim"}
  use {'andweeb/presence.nvim'}
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
   }
   use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {'nvim-tree/nvim-tree.lua'}
end)
