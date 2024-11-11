return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local is_transparent = true -- Mulai dengan tema transparan

      -- Fungsi untuk toggle transparansi
      function ToggleTransparency()
        if is_transparent then
          -- Atur ke non-transparan
          require("tokyonight").setup({
            style = "moon",
            transparent = false,
            terminal_colors = true,
            styles = {
              comments = { italic = true },
              keywords = { italic = true },
              functions = {},
              variables = {},
              sidebars = "dark",
              floats = "dark",
            },
          })
          is_transparent = false
        else
          -- Atur ke transparan
          require("tokyonight").setup({
            style = "moon",
            transparent = true,
            terminal_colors = true,
            styles = {
              comments = { italic = true },
              keywords = { italic = true },
              functions = {},
              variables = {},
              sidebars = "transparent",
              floats = "transparent",
            },
          })
          is_transparent = true
        end
        -- Terapkan ulang tema agar perubahan terlihat
        vim.cmd("colorscheme tokyonight")
      end

      -- Keybinding untuk toggle transparansi
      vim.api.nvim_set_keymap("n", "<leader>tt", ":lua ToggleTransparency()<CR>", { noremap = true, silent = true })

      -- Terapkan tema saat awal
      require("tokyonight").setup({
        style = "moon",
        transparent = is_transparent,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = is_transparent and "transparent" or "dark",
          floats = is_transparent and "transparent" or "dark",
        },
      })
      vim.cmd("colorscheme tokyonight")
    end,
  },
}
