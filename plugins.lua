local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
								
 --							
 -- Packages
 --
	use ("wbthomason/packer.nvim") -- Have packer manage itself	
    use('xiyaowong/transparent.nvim') --Transparent
	use('https://github.com/github/copilot.vim') --Github Copilot
	use('https://github.com/EdenEast/nightfox.nvim') --Nightfox Theme
	use('http://github.com/tpope/vim-surround') --Surrounding ysw)
	use('https://github.com/nvim-tree/nvim-tree.lua') --File Explorer
	use('https://github.com/tpope/vim-commentary') --For Commenting gcc & gc
	use('https://github.com/vim-airline/vim-airline') --Status bar
	use('https://github.com/ap/vim-css-color') --CSS Color Preview
	use('https://github.com/rafi/awesome-vim-colorschemes') --Retro Scheme
	use('https://github.com/ryanoasis/vim-devicons') --Developer Icons
	use('https://github.com/tc50cal/vim-terminal') --Vim Terminal
	use('https://github.com/preservim/tagbar') --Tagbar for code navigation
	use('https://github.com/terryma/vim-multiple-cursors') --CTRL + N for multiple cursors
	use('https://github.com/Abstract-IDE/Abstract-cs') --Abstract Theme
	use("nvim-tree/nvim-web-devicons") -- Add entry here to install the plugin
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'
    use 'https://github.com/nvim-treesitter/nvim-treesitter'
    use 'NeogitOrg/neogit'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'ibhagwan/fzf-lua'
    use 'rktjmp/highlight-current-n.nvim'
 --
 --
 --

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
