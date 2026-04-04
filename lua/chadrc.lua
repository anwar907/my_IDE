-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "ayu_dark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = { 
	load_on_startup = true,
	header = {
		[[                                                                       ]],
		[[  ████████╗██╗   ██╗██╗  ██╗ █████╗ ███╗   ██╗ ██████╗     ██╗  ██╗███████╗████████╗██╗██╗  ██╗]],
		[[  ╚══██╔══╝██║   ██║██║ ██╔╝██╔══██╗████╗  ██║██╔════╝     ██║ ██╔╝██╔════╝╚══██╔══╝██║██║ ██╔╝]],
		[[     ██║   ██║   ██║█████╔╝ ███████║██╔██╗ ██║██║  ███╗    █████╔╝ █████╗     ██║   ██║█████╔╝ ]],
		[[     ██║   ██║   ██║██╔═██╗ ██╔══██║██║╚██╗██║██║   ██║    ██╔═██╗ ██╔══╝     ██║   ██║██╔═██╗ ]],
		[[     ██║   ╚██████╔╝██║  ██╗██║  ██║██║ ╚████║╚██████╔╝    ██║  ██╗███████╗   ██║   ██║██║  ██╗]],
		[[     ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═╝]],
		[[                                                                       ]],
	},
	
}
M.ui = {
      tabufline = {
		enable = false,
        lazyload = true,
		show_numbers = true,
		-- order = { "treeOffset", "buffers" , "tabs", "btn"},
		bufwidth = 21
     },
	 tabs = {
		theme = "ayu_dark"
	},

	colorify = {
		enable = true,
	},
	
}

return M
