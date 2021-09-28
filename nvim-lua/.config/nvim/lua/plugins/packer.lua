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

  -- Simple plugins can be specified as strings
  use '9mm/vim-closer'

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
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}

  -- LSP
  use {'neovim/nvim-lspconfig'}
  -- Auto Complete
  use {'hrsh7th/nvim-compe'}

  -- Airline
  -- use {
  --   'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }

  -- More at https://github.com/glepnir/galaxyline.nvim/issues/12
  --
  
  --  File Tree
  -- use {'kyazdani42/nvim-web-devicons'}
  -- use {'kyazdani42/nvim-tree.lua'}
  -- nmap <leader>ne :NvimTreeToggle<cr>
  -- nmap <leader>nr :NvimTreeFindFile<cr>
  -- nmap <F3> :NvimTreeToggle<cr>
  -- " Debugging
  -- use {'nvim-telescope/telescope-dap.nvim'}
  -- use {'mfussenegger/nvim-dap'}
  --
  --
  -- Below general vim plugin
  use ('editorconfig/editorconfig-vim')
  use ('preservim/nerdtree')

  -- Themes
  -- " Theme
  -- "use ('NLKNguyen/papercolor-theme')
  -- "use ('rakr/vim-one')
  -- "use ('bluz71/vim-nightfly-guicolors')
  use {'challenger-deep-theme/vim'}
  use {'rigellute/rigel'}


  -- " TODO: This indent-blankline is really cool! if you have the time to rice your nvim, definiitely take alook at this plugin
  use {'lukas-reineke/indent-blankline.nvim'}

  -- TODO: if you have the time,evaluate these
  --"Plug 'roxma/nvim-completion-manager'
  --"Plug 'SirVer/ultisnips'
  --"Plug 'honza/vim-snippets'
end)

