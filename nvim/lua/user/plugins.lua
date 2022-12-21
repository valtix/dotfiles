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
	-- My plugins here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("nvim-tree/nvim-tree.lua") -- File explorer

	-- Colorschemes
	use("morhetz/gruvbox")

	-- Auto-completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- Managing LSP
	use("williamboman/mason.nvim") -- Managing and installing lsp servers
	use("williamboman/mason-lspconfig.nvim") -- Helps bridge the gap between mason and lspconfig

	-- Configuring LSP
	use("neovim/nvim-lspconfig") -- Configuration lsp servers
	use("hrsh7th/cmp-nvim-lsp") -- For autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- Enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- Additional functionality for typescript server
	use("onsails/lspkind.nvim") -- VSCode like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- Configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- Bridges gap b/w mason & null-ls

	-- Treesiter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- Auto Closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
