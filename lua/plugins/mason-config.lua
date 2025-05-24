return {
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- LSP servers
        "tsserver",          -- JavaScript / TypeScript
        "html",              -- HTML
        "cssls",             -- CSS
        "jsonls",            -- JSON
        "lua_ls",            -- Lua (untuk Neovim config)
        "emmet_ls",          -- Emmet support
        "tailwindcss",       -- Tailwind CSS
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      })
    end,
  }
}
