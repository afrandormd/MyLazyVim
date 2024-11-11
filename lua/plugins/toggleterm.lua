return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-/>]], -- Shortcut untuk membuka terminal
      direction = "float", -- Default mode: float
      shade_terminals = true,
      start_in_insert = true,
    })
  end,
}
