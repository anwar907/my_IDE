vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- open nvim-tree 
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    require("nvim-tree.api").tree.open()
  end,
})

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
dofile(vim.g.base46_cache .. "syntax")

require "options"
require "nvchad.autocmds"

-- Switch buffer
require("nvchad.tabufline").prev()
require("nvchad.tabufline").next()

-- Close buffer
require("nvchad.tabufline").close_buffer()
require("nvchad.tabufline").closeAllBufs(true)
require("nvchad.tabufline").closeAllBufs(false)
require("nvchad.tabufline").closeBufs_at_direction("left")
require("nvchad.tabufline").move_buf(1)


vim.schedule(function()
  require "mappings"
end)

require("mason-lspconfig").setup {
  automatic_enable = {"lua_ls", "html", "cssls", "jsonls", "dartls", "gopls", "bashls", "marksman", "pyright", "yamlls", "clangd", "eslint", "diagnosticls", "graphql", "ts_ls" }
}

local lspconfig = require('lspconfig')
lspconfig.ts_ls.setup({})


-- Custom breakpoint
vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = '#993939', bg = '#21353f' })
vim.fn.sign_define('DapBreakpoint', { text = '🧘', texthl = 'red', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '🧘', texthl = 'red', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = '🧘', texthl = 'red', linehl = '', numhl = '' })
vim.fn.sign_define('DapContinue', { text = '🏃', texthl = 'DapContinue' })

-- Debugging
local dap = require("dap")

-- Debugging Flutter
dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch dart",
    dartSdkPath = "/opt/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
    flutterSdkPath = "/opt/flutter/bin/flutter",                  -- ensure this is correct
    program = "${workspaceFolder}/lib/main.dart",     -- ensure this is correct
    cwd = "${workspaceFolder}",
  },
  {
    type = "flutter",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = "/opt/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
    flutterSdkPath = "/opt/flutter/bin/flutter",             -- ensure this is correct
    program = "${workspaceFolder}/lib/main.dart",     -- ensure this is correct
    cwd = "${workspaceFolder}",
  }
}

-- Debugging React Native
dap.configurations.javascript = {
  {
    type = "reactnative",
    request = "launch",
    name = "Debug React Native",
    cwd = "${workspaceFolder}",
    platform = "ios", -- atau "android" untuk Android
    sourceMaps = true,
    enableDebug = true,
    port = 8081,
  }
}

dap.configurations.typescript = dap.configurations.javascript
dap.configurations.javascriptreact = dap.configurations.javascript
dap.configurations.typescriptreact = dap.configurations.javascript

-- Git blame
require('gitblame')