-- Enable mouse globally
vim.opt.mouse = "a"

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    -- ESC exit terminal mode
    vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { buffer = true, noremap = true })
    -- Disable mouse di terminal buffer supaya klik window lain langsung fokus
    vim.opt_local.mouse = ""
  end,
})
