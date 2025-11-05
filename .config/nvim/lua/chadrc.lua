-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

require("custom.configs.nvimtree")

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gruvbox",
  transparency = true,
	hl_override = {
 	Comment = { italic = true },
	  ["@comment"] = { italic = true },
 },
}

M.nvdash = { load_on_startup = true }
 M.ui = {
  tabufline = {
  lazyload = false
  }
 }

local vim = vim
local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = true
opt.foldlevel = 99
return M
