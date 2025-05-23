return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        automatic_enable = {
          "lua_ls",

        },
        ensure_installed = {
          "lua_ls",
          "pylsp",
          "rust_analyzer",
          "ts_ls",
          "gopls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help,{})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>go', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, {})
      vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {})

      vim.keymap.set({ 'n', 'v' }, '<leader>sa', vim.lsp.buf.code_action, {})
    end
  }
}

