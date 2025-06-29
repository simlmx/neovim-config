return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format" },
        typescript = { "prettier", lsp_format = "first" },
        typescriptreact = { "prettier", lsp_format = "first" },
      },
    },
  },
}
