-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

--opt.expandtab = true
--opt.tabstop = 2
--opt.softtabstop = 2
--opt.shiftwidth = 2
--opt.mouse = "a"
----opt.clipboard = "unnamedplus"
--vim.g.mapleader = " "

opt.ignorecase = true

-- pandoc related

--opt.spell = false
--opt.foldmethod = "manual"
--opt.foldenable = false

-- scrolling
opt.number = false
opt.relativenumber = false
opt.scrolloff = 8
opt.linebreak = true

--
-- vim.g.mkdp_browser = "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"
