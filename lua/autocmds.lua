-- Terminal behavior
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    -- Enable mouse in terminal
    vim.opt_local.mouse = "a"
    -- Start in insert mode
    vim.cmd "startinsert"
  end,
})

-- Keluar dari terminal saat close
vim.api.nvim_create_autocmd("TermClose", {
  callback = function()
    vim.cmd "startinsert"
  end,
})
