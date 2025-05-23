require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "jsonls", "dartls", "gopls", "bashls", "marksman", "ts_ls", "pyright", "yamlls", "clangd", "eslint", "diagnosticls", "graphql" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
