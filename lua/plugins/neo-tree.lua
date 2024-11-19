return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
        width = 30,
      },
      -- Pastikan filter diatur untuk menampilkan file tersembunyi
      filters = {
        dotfiles = false, -- Menampilkan file yang dimulai dengan titik
        custom = {}, -- Menampilkan semua folder
      },
      -- Menonaktifkan pengaturan lain yang mungkin menyebabkan file tersembunyi
      filesystem = {
        filtered_items = {
          visible = true, -- Menampilkan semua file dan folder
        },
      },
      render = {
        highlight_opened_files = "name",
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
          },
        },
      },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
}
