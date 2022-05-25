local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Note: vim-closer is plugin disabled due to always appending
  -- braces after the new line, pretty annoying, left here for future reference
  -- use '9mm/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
  use {'tpope/vim-surround'}


  
  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {'mhinz/vim-startify'}
  -- use {'rmagatti/auto-session'}

  -- Fuzzy Finder
  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-telescope/telescope.nvim', requires = {
    {'nvim-lua/plenary.nvim'}
  }}
  use {'nvim-telescope/telescope-fzy-native.nvim' }

  -- LSP
  use {'neovim/nvim-lspconfig'}
  use {'simrat39/rust-tools.nvim'}

  -- Auto Complete
  use {'hrsh7th/nvim-cmp'} -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- Airline
  -- use {
  --   'glepnir/galaxyline.nvim',
  --     branch = 'main',
  --     -- your statusline
  --     config = function() require'plugins.config.galaxyline' end,
  --     -- some optional icons
  --     requires = {'kyazdani42/nvim-web-devicons', opt = true}
  -- }
  use 'feline-nvim/feline.nvim'
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
        vim.g.nvim_tree_respect_buf_cwd = 1
        require'nvim-tree'.setup {
          update_cwd = false,
          update_focused_file = {
            enable = false,
            update_cwd = false
          },
        }
      end
  }
  use {'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  -- nmap <leader>ne :NvimTreeToggle<cr>
  -- nmap <leader>nr :NvimTreeFindFile<cr>
  -- nmap <F3> :NvimTreeToggle<cr>
  -- Debugging
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'mfussenegger/nvim-dap'}
  --
  
  -- Below general vim plugin
  use ('editorconfig/editorconfig-vim')

  -- Themes
  -- " Theme
  -- "use ('rakr/vim-one')
  -- "use ('bluz71/vim-nightfly-guicolors')
  use {'NLKNguyen/papercolor-theme'}
  use {'challenger-deep-theme/vim'}
  use {'dracula/vim', as = 'dracula'}
  use {'sainnhe/sonokai'}
  use {'haishanh/night-owl.vim'}
  use {'lifepillar/vim-gruvbox8'}
  use {'sainnhe/everforest'}
  use {'rigellute/rigel'}
  use {'folke/tokyonight.nvim'}
  vim.g.tokyonight_style = "night"

  use {'<S-Del>jacoborus/tender.vim'}
  use {'EdenEast/nightfox.nvim'} -- Packer


  -- Others
  use {'junegunn/vim-easy-align'}
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Buffer
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }, tag = 'release'}
  
  --- Project Manager
  use { "ahmedkhalf/project.nvim",
        config = function()
          require("project_nvim").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            show_hidden = true,
          }
        end
  }
  -- " TODO: This indent-blankline is really cool! if you have the time to rice your nvim, definiitely take alook at this plugin
  use {'lukas-reineke/indent-blankline.nvim'}

  -- TODO: if you have the time,evaluate these
  --"Plug 'roxma/nvim-completion-manager'
  --"Plug 'SirVer/ultisnips'
  --"Plug 'honza/vim-snippets'
  -- snippets & annotatoins
  use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {
            enabled = true
        }
    end,
    requires = "nvim-treesitter/nvim-treesitter"
  }
end)

