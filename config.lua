
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
  fvm         = "3.13.9",  

  debugger    = {
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
  ui          = {
    border = "rounded",
    notification_style = "plugin",
  },
  decorations = {
    statusline = {
      app_verion = true,
      device = true,
    }
  },
  outline     = {
    open_cmd = "40vnew",
    auto_open = false
  },
  dev_log     = {
    enabled = false
  },
}

-- =========================================

lvim.leader = "space"
lvim.colorscheme = "onedark"           -- set to a custom theme
lvim.builtin.time_based_themes = false -- set false to use your own configured theme
lvim.transparent_window = true         -- enable/disable transparency
lvim.debug = true
vim.lsp.set_log_level = "error"
lvim.log.level = "warn"
lvim.lsp.code_lens_refresh = true
lvim.lsp.installer.setup.automatic_installation = false
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
lvim.builtin.noice = { active = false }             -- enables noice.nvim and inc-rename.nvim
lvim.builtin.go_programming = { active = true }     -- gopher.nvim + nvim-dap-go
lvim.builtin.python_programming = { active = true } -- swenv.nvim + nvim-dap-python + requirements.txt.vim
lvim.builtin.web_programming = { active = true }    -- typescript.nvim + package-info.nvim
lvim.builtin.rust_programming = { active = true }   -- rust_tools.nvim + crates.nvim
lvim.builtin.cpp_programming = { active = true }    -- clangd_extensions.nvim + make-tools.nvim
lvim.builtin.cmp.cmdline.enable = false
lvim.builtin.borderless_cmp = false
lvim.builtin.colored_args = false -- if true then sets up hlargs.nvim
lvim.builtin.bigfile.active = true


-- jump find referance
lvim.keys.normal_mode["<leader>j"] = ":AnyJumpVisual<CR>"
lvim.keys.normal_mode["<leader>bb"] = ":AnyJumpBack<CR>"


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

-- Configure DAP for Go

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "go",
  "dart"
}


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
lvim.keys.normal_mode["<leader>e"] = ":NERDTreeToggle<CR>"
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

require('go').setup({

  disable_defaults = false, -- true|false when true set false to all boolean settings and replace all table
  -- settings with {}
  go = 'go', -- go command, can be go[default] or go1.18beta1
  goimport = 'gopls', -- goimport command, can be gopls[default] or goimport
  fillstruct = 'gopls', -- can be nil (use fillstruct, slower) and gopls
  gofmt = 'gofumpt', --gofmt cmd,
  max_line_len = 128, -- max line length in golines format, Target maximum line length for golines
  tag_transform = false, -- can be transform option("snakecase", "camelcase", etc) check gomodifytags for details and more options
  tag_options = 'json=omitempty', -- sets options sent to gomodifytags, i.e., json=omitempty
  gotests_template = "", -- sets gotests -template parameter (check gotests for details)
  gotests_template_dir = "", -- sets gotests -template_dir parameter (check gotests for details)
  comment_placeholder = '', -- comment_placeholder your cool placeholder e.g. 󰟓       
  icons = { breakpoint = '🧘', currentpos = '🏃' }, -- setup to `false` to disable icons setup
  verbose = false, -- output loginf in messages
  lsp_cfg = false, -- true: use non-default gopls setup specified in go/lsp.lua
  -- false: do nothing
  -- if lsp_cfg is a table, merge table with with non-default gopls setup in go/lsp.lua, e.g.
  --   lsp_cfg = {settings={gopls={matcher='CaseInsensitive', ['local'] = 'your_local_module_path', gofumpt = true }}}
  lsp_gofumpt = false, -- true: set default gofmt in gopls format to gofumpt
  lsp_on_attach = nil, -- nil: use on_attach function defined in go/lsp.lua,
  --      when lsp_cfg is true
  -- if lsp_on_attach is a function: use this function as on_attach function for gopls
  lsp_keymaps = true,  -- set to false to disable gopls/lsp keymap
  lsp_codelens = true, -- set to false to disable codelens, true by default, you can use a function
  -- function(bufnr)
  --    vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>F", "<cmd>lua vim.lsp.buf.formatting()<CR>", {noremap=true, silent=true})
  -- end
  -- to setup a table of codelens
  -- lsp_diag_hdlr = true, -- hook lsp diag handler
  -- lsp_diag_underline = true,
  -- virtual text setup
  -- lsp_diag_virtual_text = { space = 0, prefix = '■' },
  --lsp_diag_signs = true,
  lsp_diag_update_in_insert = false,
  lsp_document_formatting = true,
  -- set to true: use gopls to format
  -- false if you want to use other formatter tool(e.g. efm, nulls)
  lsp_inlay_hints = {
    enable = true,
    -- Only show inlay hints for the current line
    only_current_line = false,
    -- Event which triggers a refersh of the inlay hints.
    -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
    -- not that this may cause higher CPU usage.
    -- This option is only respected when only_current_line and
    -- autoSetHints both are true.
    only_current_line_autocmd = "CursorHold",
    -- whether to show variable name before type hints with the inlay hints or not
    -- default: false
    show_variable_name = true,
    -- prefix for parameter hints
    parameter_hints_prefix = "󰊕 ",
    show_parameter_hints = true,
    -- prefix for all the other hints (type, chaining)
    other_hints_prefix = "=> ",
    -- whether to align to the lenght of the longest line in the file
    max_len_align = false,
    -- padding from the left if max_len_align is true
    max_len_align_padding = 1,
    -- whether to align to the extreme right or not
    right_align = false,
    -- padding from the right if right_align is true
    right_align_padding = 6,
    -- The color of the hints
    highlight = "Comment",
  },
  gopls_cmd = nil,          -- if you need to specify gopls path and cmd, e.g {"/home/user/lsp/gopls", "-logfile","/var/log/gopls.log" }
  gopls_remote_auto = true, -- add -remote=auto to gopls
  gocoverage_sign = "█",
  sign_priority = 5,        -- change to a higher number to override other signs
  dap_debug = true,         -- set to false to disable dap
  dap_debug_keymap = true,  -- true: use keymap for debugger defined in go/dap.lua
  -- false: do not use keymap in go/dap.lua.  you must define your own.
  -- windows: use visual studio keymap
  dap_debug_gui = {},                                            -- bool|table put your dap-ui setup here set to false to disable
  dap_debug_vt = { enabled_commands = true, all_frames = true }, -- bool|table put your dap-virtual-text setup here set to false to disable

  dap_port = 38697,                                              -- can be set to a number, if set to -1 go.nvim will pickup a random port
  dap_timeout = 15,                                              --  see dap option initialize_timeout_sec = 15,
  dap_retries = 20,                                              -- see dap option max_retries
  build_tags = "tag1,tag2",                                      -- set default build tags
  textobjects = true,                                            -- enable default text jobects through treesittter-text-objects
  test_runner = 'go',                                            -- one of {`go`, `richgo`, `dlv`, `ginkgo`, `gotestsum`}
  verbose_tests = true,                                          -- set to add verbose flag to tests deprecated, see '-v' option
  run_in_floaterm = false,                                       -- set to true to run in float window. :GoTermClose closes the floatterm
  -- float term recommend if you use richgo/ginkgo with terminal color

  floaterm = {                                                                 -- position
    posititon = 'auto',                                                        -- one of {`top`, `bottom`, `left`, `right`, `center`, `auto`}
    width = 0.45,                                                              -- width of float window if not auto
    height = 0.98,                                                             -- height of float window if not auto
  },
  trouble = false,                                                             -- true: use trouble to open quickfix
  test_efm = false,                                                            -- errorfomat for quickfix, default mix mode, set to true will be efm only
  luasnip = false,                                                             -- enable included luasnip snippets. you can also disable while add lua/snips folder to luasnip load
  --  Do not enable this if you already added the path, that will duplicate the entries
  on_jobstart = function(cmd) _ = cmd end,                                     -- callback for stdout
  on_stdout = function(err, data) _, _ = err, data end,                        -- callback when job started
  on_stderr = function(err, data) _, _ = err, data end,                        -- callback for stderr
  on_exit = function(code, signal, output) _, _, _ = code, signal, output end, -- callback for jobexit, output : string
  iferr_vertical_shift = 4                                                     -- defines where the cursor will end up vertically from the begining of if err statement
})
