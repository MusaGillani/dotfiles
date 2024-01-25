-- setup leader key 
vim.g.mapleader = " "
-- setup lazy nvim as package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins to install 
local plugins = {
	-- defining catpuccin plugin to be installed 
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	-- telescope for fuzzy finding and live grep
	{
    		'nvim-telescope/telescope.nvim', tag = '0.1.5',
      		dependencies = { 'nvim-lua/plenary.nvim' }
    	}
}
local opts = {}
require("lazy").setup(plugins, opts)

-- setup catppuccin 
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- setup telescope
local builtin = require("telescope.builtin")
-- use Ctrl-p to find files
vim.keymap.set("n","<C-p>", builtin.find_files,{})
-- run :checkhealth telescope, might error for missing dep ripgrep
-- install that using brew: brew install ripgrep and run checkhealth again
-- ripgrep is required for live_grep to work
vim.keymap.set("n","<leader>fg", builtin.live_grep,{})
