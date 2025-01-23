return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },

      -- ensure these language parsers are installed
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "csharp",
        "css",
        "dockerfile",
        "gitignore",
        "go",
        "graphql",
        "html",
        "json",
        "java",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "odin",
        "php",
        "prisma",
        "python",
        "query",
        "ruby",
        "rust",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "zig",
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
