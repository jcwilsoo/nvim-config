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
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          -- Rename the variable under cursor
          map('grn', vim.lsp.buf.rename, '[R]e[n]ame')

          -- Jump to the implementation of the word under cursor
          map('gri', vim.lsp.buf.implementation, '[G]oto [I]mplementation')

          -- Jump to definition
          map('<leader>gd', vim.lsp.buf.definition, '[G]oto [d]efinition')

          -- Jump to declaration
          map('<leader>gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

          --Open references
          map('<leader>gr', vim.lsp.buf.references, '[G]oto [r]eferences')

          vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
          vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, {})
          vim.keymap.set('n', '<leader>go', vim.lsp.buf.implementation, {})
          vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, {})

          vim.keymap.set({ 'n', 'v' }, '<leader>sa', vim.lsp.buf.code_action, {})
        end


      })
    end
  }
}
