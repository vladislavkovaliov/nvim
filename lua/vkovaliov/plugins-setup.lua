local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- Autocommand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')
  use('nvim-lua/plenary.nvim')

  use('bluz71/vim-nightfly-guicolors') -- preffered colors scheme
  use('christoomey/vim-tmux-navigator')
  use('szw/vim-maximizer') -- to max and restore size of current window

  -- essential plugins
  use('tpope/vim-surround')
  use('vim-scripts/ReplaceWithRegister')
  use('numToStr/Comment.nvim')

  use('nvim-tree/nvim-tree.lua')
  use('kyazdani42/nvim-web-devicons')

  use('nvim-lualine/lualine.nvim')

  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
