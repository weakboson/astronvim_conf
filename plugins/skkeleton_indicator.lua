return {
  "delphinus/skkeleton_indicator.nvim",
  lazy = false,
  dependencies = { "vim-skk/skkeleton" },
  config = function()
    require("skkeleton_indicator").setup {}
  end,
}
