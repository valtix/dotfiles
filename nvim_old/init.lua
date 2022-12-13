---------------------------------------
--	Adding options
---------------------------------------

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true		-- ignore uppercase letters when doing a search
vim.opt.smartcase = true		-- ignore uppercase letters unless the search term has uppercase letters
vim.opt.hlsearch = false		-- disables the highlighting of the previous search
vim.opt.wrap = true				-- makes the text of long lines always visible
vim.opt.breakindent = true		-- preserve the indentation of a virtual line
vim.opt.tabstop = 4 			-- the amount of space on screen a tab character can occupy	
vim.opt.shiftwidth = 4			-- the amount of characters used to indent a line
vim.opt.expandtab = false		-- controls whether or not Neovim should transform a Tab character to spaces 



---------------------------------------
-- Keybindings	
---------------------------------------

vim.g.mapleader = ' '												-- setting up the Space key as leader

vim.keymap.set({'n', 'x'}, '<C-c>', '"+y')							-- Ctrl + c copy from external clipboard to nvim
vim.keymap.set({'n', 'x'}, '<C-v>', '"+p')							-- Ctrl + v paste from nvim to external clipboard
vim.keymap.set({'n', 'x'}, 'x', '"_x')								-- delte text without changing the internal registers
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')		-- select text in current buffer
vim.keymap.set("i", "jk", "<esc>", {noremap = true})				-- get out of insert mode and into normal mode 
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>i", {noremap = true})		-- Ctrl + s to save file in insert mode
vim.keymap.set("n", "<C-s>", ":w<CR>", {noremap = true})			-- Ctrl + s to save file in normal mode



---------------------------------------
-- Plugins via Packer
---------------------------------------

-- Installing packer:
--
local function ensure_packer()
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    print('Installing packer...')
    local packer_url = 'https://github.com/wbthomason/packer.nvim'
    vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
    print('Done.')

    vim.cmd('packadd packer.nvim')
    return true
  end

  return false
end

-- You can "comment out" the line below after packer is installed
--local install_plugins = ensure_packer()

require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  use {'folke/tokyonight.nvim'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim'}

  if install_plugins then
    require('packer').sync()
  end
end)

if install_plugins then
  print '=================================='
  print '    Plugins will be installed.'
  print '      After you press Enter'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end



---------------------------------------
-- Plugin Configuration
---------------------------------------


-- Colorscheme:
--
vim.opt.termguicolors = true
vim.cmd('colorscheme tokyonight')
