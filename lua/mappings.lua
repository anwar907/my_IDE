require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Formatting
map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format code" })

-- Debugging
map("n", "<leader>d", "<ESC>", { desc = "Debugging" })
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Toggle breakpoint" })
map("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Continue debugging" })
map("n", "<leader>ds", "<cmd>lua require'dap'.step_over()<cr>", { desc = "Step over" })
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step into" })
map("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", { desc = "Step out" })
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<cr>", { desc = "Open REPL" })

-- File operations
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Save and quit" })

-- Navigation
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "File explorer" })
map("n", "<leader>f", "<ESC>", { desc = "Find" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })

-- Git
map("n", "<leader>g", "<ESC>", { desc = "Git" })
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Open LazyGit" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Git Commit" })
map("n", "<leader>gt", "<cmd>Telescope git_status<cr>", { desc = "Git Status" })
map("n", "<leader>gt", "<cmd>Telescope git_stash<cr>", { desc = "Git Stash" })
map("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Git File" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Git Branch" })


-- LSP
map("n", "<leader>D", "<ESC>", { desc = "References" })
map("n", "<leader>Dd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition" })
map("n", "<leader>Dr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "Go to references" })
map("n", "<leader>Dh", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Hover documentation" })
map("n", "<leader>Dh", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Hover documentation" })
map("n", "<leader>Dn", "<cmd>lua vim.lsp.buf.implementation()<cr>", { desc = "Implementation" })
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename symbol" })

-- Lazy.nvim mappings
map("n", "<leader>u", "<cmd>Lazy<cr>", { desc = "Update" })
map("n", "<leader>us", "<cmd>Lazy sync<cr>", { desc = "Sync/Install plugins" })
map("n", "<leader>uc", "<cmd>Lazy check<cr>", { desc = "Check plugin status" })
map("n", "<leader>ux", "<cmd>Lazy clean<cr>", { desc = "Clean unused plugins" })
map("n", "<leader>ul", "<cmd>Lazy log<cr>", { desc = "View Lazy.nvim logs" })
map("n", "<leader>uh", "<cmd>Lazy home<cr>", { desc = "Go to Lazy.nvim home" })
map("n", "<leader>up", "<cmd>Lazy profile<cr>", { desc = "View plugin load profile" })
map("n", "<leader>uu", "<cmd>Lazy update<cr>", { desc = "Update plugins" })

-- window
map("n", "<leader>w", "<C-w>w", { desc = "Window" })
map("n", "<leader>ww", "<C-w>w", { desc = "Switch to other window" })
map("n", "<leader>wh", "<C-w>h", { desc = "Move to left window" })
map("n", "<leader>wj", "<C-w>j", { desc = "Move to bottom window" })
map("n", "<leader>wk", "<C-w>k", { desc = "Move to top window" })
map("n", "<leader>wl", "<C-w>l", { desc = "Move to right window" })
map("n", "<leader>wH", "<C-w>H", { desc = "Move window to the left" })
map("n", "<leader>wJ", "<C-w>J", { desc = "Move window to the bottom" })
map("n", "<leader>wK", "<C-w>K", { desc = "Move window to the top" })
map("n", "<leader>wL", "<C-w>L", { desc = "Move window to the right" })
map("n", "<leader>w=", "<C-w>=", { desc = "Make windows equal width & height" })
map("n", "<leader>ws", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>wc", "<C-w>c", { desc = "Close current window" })
map("n", "<leader>wo", "<C-w>o", { desc = "Close all other windows" })


-- Terminal mode
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- for i = 1, 9, 1 do
--   vim.keymap.set("n", string.format("<A-%s", i), function()
--     vim.api.nvim_set_current_buf(vim.t.bufs[i])
--   end)
-- end
