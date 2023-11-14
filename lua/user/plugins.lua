-- Additional Plugins
lvim.plugins = {
  {
    "lunarvim/colorschemes"
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {}
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "lervag/vimtex" },
  { "JuliaEditorSupport/julia-vim" },
 {
    "preservim/nerdtree",
    init = function()
      vim.g.NERDTreeMinimalUI = 1
      vim.g.NERDTreeDirArrowExpandable = '󰉋'
      vim.g.NERDTreeDirArrowCollapsible = '󰁊'
      vim.g.NERDTreeWinSize = 30
      vim.g.NERDTreeShowBookmarks = 1
    end
  },
  { "ray-x/go.nvim" },
  {
    "tiagofumo/vim-nerdtree-syntax-highlight",
  },
  {
    "akinsho/flutter-tools.nvim",
    -- lazy = true,
    -- dependencies = {
    --  'nvim-lua/plenary.nvim',
    --  'stevearc/dressing.nvim',   -- optional for vim.ui.select
    -- },
    --  config = true,
    --  { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },

  },
  {
    "dart-lang/dart-vim-plugin",
  },
--  {
--    "Xuyuanp/nerdtree-git-plugin",
--  },
  {
    "bryanmylee/vim-colorscheme-icons"
  },
--  {
--    'Exafunction/codeium.vim',
--    init = function()
--      -- Change '<C-g>' here to any keycode you like.
--      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
--      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
--      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
--      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
--    end
--  },
  {
    "rust-lang/rust.vim"
  },
  {"pechorin/any-jump.vim"},
  {"nvim-tree/nvim-web-devicons"},
  {"nvim-treesitter/nvim-treesitter"},
--  {"nvim-tree/nvim-tree.lua"}
}
