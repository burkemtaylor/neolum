return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "angularls",
        "bashls",
        "cssls",
        "dockerls",
        "emmet_ls",
        "graphql",
        "harper_ls",
        "html",
        "htmx",
        "ols",
        "prismals",
        "sqls",
        "svelte",
        "tailwindcss",
        "zls",
      },
    })
  end,
}
