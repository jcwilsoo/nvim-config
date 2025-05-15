return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = "rounded",
    }),
  },
  opts = {
    expose_as_code_action = "all",
    publish_diagnostic_on = "change",
    tsserver_max_memory = "auto",
    tsserver_file_preferences = {
      includeCompletionsForModuleExports = true,
      includeInlayParameterNameHints = "all",
    },
    jsx_close_tag = {
      enable = true,
      filetypes = { "typescriptreact" },
    },
  }
}
