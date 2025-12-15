require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "ts_ls", "arduino_language_server", "postgres_lsp", "svelte", "tailwindcss" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
