-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

require("user.lunar.palette")
require("user.lunar.theme")
require("user.keymaps")
require("user.plugins")
require("user.icons")
require("user.options")
require("user.whichkey")
require('lspconfig').dartls.setup {}
require('toggleterm').setup {}
require("user.symbol-outline")
require("flutter-tools").setup {
  fvm = true,
  debugger = {
    enabled = true,
    run_via_dap = true,
    register_controllers = function(_)
      local dap = require("dap")
      dap.set_log_level("TRACE")
      dap.set_log_level("INFO")
      dap.set_log_level("ERROR")

      dap.configuration.dart = {
        experimental = true,
        enable_ui = true,
        enable_dart_debug = true,
        enable_dart_code_coverage = true,
        enable_dart_opt = true,
      }

      require("dap.ext.vscode").load_launchjs()
    end
  },
  ui = {
    border = "rounded",
    notification_style = "plugin",
  },
  decorations = {
    statusline = {
      app_verion = true,
      device = true,
    }
  },
  outline = {
    open_cmd = "40vnew",
    auto_open = false
  },
  dev_log = {
    enabled = false
  },
}
 
-- =========================================

lvim.leader = "space"
lvim.colorscheme = "onedark"          -- set to a custom theme
lvim.builtin.time_based_themes = false -- set false to use your own configured theme
lvim.transparent_window = true        -- enable/disable transparency
lvim.debug = true
vim.lsp.set_log_level = "error"
lvim.log.level = "warn"
lvim.lsp.code_lens_refresh = true
lvim.lsp.installer.setup.automatic_installation = true
vim.opt.spelllang = "en"
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.opt.title = false
lvim.use_icons = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
-- vim.cmd("let g:sonokai_style = 'andromeda'")
-- vim.cmd("let g:sonokai_enable_italic_comment = 1")
vim.g.transparent_background = false
vim.g.italatic_comments = true
vim.g.italatic_keywords = true
vim.g.italatic_functions = true
vim.g.italatic_variables = true

-- Customization
-- =========================================
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.alpha.active = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.sell_your_soul_to_devil = { active = false, prada = false } -- if you want microsoft to abuse your soul
lvim.builtin.lastplace = { active = false }                              -- change to false if you are jumping to future
lvim.builtin.tabnine = { active = true }                                 -- change to false if you don't like tabnine
lvim.builtin.persistence = { active = true }                             -- change to false if you don't want persistence
lvim.builtin.presence = { active = false }                               -- change to true if you want discord presence
lvim.builtin.orgmode = { active = false }                                -- change to true if you want orgmode.nvim
lvim.builtin.dap.active = true                                           -- change this to enable/disable debugging
lvim.builtin.fancy_statusline = { active = true }                        -- enable/disable fancy statusline
lvim.builtin.fancy_wild_menu = { active = false }                        -- enable/disable cmp-cmdline
lvim.builtin.fancy_diff = { active = false }                             -- enable/disable fancier git diff
lvim.builtin.lua_dev = { active = true }                                 -- change this to enable/disable folke/lua_dev
lvim.builtin.test_runner = { active = true, runner = "ultest" }          -- change this to enable/disable ultest or neotest
lvim.builtin.cheat = { active = false }                                  -- enable/disable cheat.sh integration
lvim.builtin.sql_integration = { active = false }                        -- use sql integration
lvim.builtin.smooth_scroll =
"cinnamon"                                                               -- for smoth scrolling, can be "cinnamon", "neoscroll" or ""
lvim.builtin.neoclip = { active = true, enable_persistent_history = false }
lvim.builtin.nonumber_unfocus = false                                    -- diffrentiate between focused and non focused windows
lvim.builtin.custom_web_devicons = true                                  -- install https://github.com/Nguyen-Hoang-Nam/mini-file-icons
lvim.builtin.harpoon = { active = true }                                 -- use the harpoon plugin
lvim.builtin.remote_dev = { active = false }                             -- enable/disable remote development
lvim.builtin.cursorline = { active = false }                             -- use a bit fancier cursorline
lvim.builtin.motion_provider =
"hop"                                                                    -- change this to use different motion providers ( hop or leap )
lvim.builtin.hlslens = { active = false }                                -- enable/disable hlslens
lvim.builtin.csv_support = false                                         -- enable/disable csv support
lvim.builtin.sidebar = { active = true }                                 -- enable/disable sidebar
lvim.builtin.task_runner =
"async_tasks"                                                            -- change this to use different task runners ( "async_tasks" or "overseer" or "")
lvim.builtin.winbar_provider =
""                                                                       -- can be "filename" or "treesitter" or "navic" or ""
lvim.builtin.metals = {
  active = false,                                                        -- enable/disable nvim-metals for scala development
  fallbackScalaVersion = "3.2.0-RC3",
  serverVersion = "0.11.12",
}
lvim.builtin.collaborative_editing = { active = false } -- enable/disable collaborative editing
lvim.builtin.file_browser = { active = false }          -- enable/disable telescope file browser
lvim.builtin.sniprun = { active = false }               -- enable/disable sniprun
lvim.builtin.tag_provider =
"symbols-outline"                                       -- change this to use different tag providers ( symbols-outline or vista )
lvim.builtin.global_statusline = false                  -- set true to use global statusline
lvim.builtin.dressing = { active = false }              -- enable to override vim.ui.input and vim.ui.select with telescope
lvim.builtin.refactoring = { active = false }           -- enable to use refactoring.nvim code_actions
lvim.builtin.tmux_lualine = false                       -- use vim-tpipeline to integrate lualine and tmux
lvim.builtin.lsp_lines = false                          -- enable/disable lsp_lines to display lsp virtual text below instead of behind
lvim.builtin.legendary = { active = false }             -- enable/disable legendary plugin ( ctrl-p command )
lvim.builtin.tree_provider = "nvimtree"                 -- can be "neo-tree" or "nvimtree" or ""
lvim.builtin.lir.active = false
lvim.builtin.breadcrumbs.active = false
lvim.builtin.illuminate.active = false
lvim.builtin.indentlines.active = true
lvim.builtin.noice = { active = false }              -- enables noice.nvim and inc-rename.nvim
lvim.builtin.go_programming = { active = false }     -- gopher.nvim + nvim-dap-go
lvim.builtin.python_programming = { active = false } -- swenv.nvim + nvim-dap-python + requirements.txt.vim
lvim.builtin.web_programming = { active = false }    -- typescript.nvim + package-info.nvim
lvim.builtin.rust_programming = { active = false }   -- rust_tools.nvim + crates.nvim
lvim.builtin.cpp_programming = { active = false }    -- clangd_extensions.nvim + make-tools.nvim
lvim.builtin.cmp.cmdline.enable = false
lvim.builtin.borderless_cmp = false
lvim.builtin.colored_args = false -- if true then sets up hlargs.nvim
lvim.builtin.bigfile.active = true

vim.filetype.add {
  extension = {
    arb = "json"
  }
}

-- flutter snipets enable
local luasnip = require("luasnip")
luasnip.filetype_extend("dart", { "flutter" })

local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

lvim.builtin.telescope.on_config_done = function(telescope)
  telescope.load_extension "flutter"
end

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["F"] = {
  name = "+Flutter",
  c = { "<cmd>Telescope flutter commands<cr>", "Open Flutter Commans" },
  d = { "<cmd>FlutterDevices<cr>", "Flutter Devices" },
  e = { "<cmd>FlutterEmulators<cr>", "Flutter Emulators" },
  r = { "<cmd>FlutterReload<cr>", "Hot Reload App" },
  R = { "<cmd>FlutterRestart<cr>", "Hot Restart app" },
  q = { "<cmd>FlutterQuit<cr>", "Quit running application" },
  v = { "<cmd>Telescope flutter fvm<cr>", "Flutter version" }
}

-- keymappings
lvim.keys.normal_mode["<keader>e"] = ":NERDTreeToggle<CR>"
lvim.keys.normal_mode["<3>"] = ":DartAddBreakpoint<CR>"
lvim.keys.normal_mode["<4>"] = ":DartStepOver<CR>"
lvim.keys.normal_mode["<5>"] = ":DartPrint sum<CR>"
lvim.keys.normal_mode["<leader>gs"] = ":NERDTreeGitStatus<CR>"
lvim.keys.normal_mode["<leader>gd"] = ":NERDTreeGitDiff<CR>"
lvim.keys.normal_mode["<leader>gu"] = ":NERDTreeGitUndo<CR>"
lvim.keys.normal_mode["<leader>gc"] = ":NERDTreeGitCommit<CR>"
lvim.keys.normal_mode = {
  -- Better window movement
  ["<C-h>"] = "<C-w>h",
  ["<C-j>"] = "<C-w>j",
  ["<C-k>"] = "<C-w>k",
  ["<C-l>"] = "<C-w>l",
}

lvim.builtin.lualine.sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {},
}
lvim.builtin.lualine.inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {},
}
