return {
  lazy = false,
  "Shougo/ddc.vim",
  dependencies = { "vim-denops/denops.vim", "Shougo/ddc-ui-native" },
  config = function()
    vim.fn["ddc#custom#patch_global"]("ui", "native")
    vim.fn["ddc#custom#patch_global"]("sources", { "skkeleton" })
    local dic = {
      _ = {
        matchers = { "matcher_head" },
        sorters  = { "sorter_rank" },
      },
      skkeleton = {
        mark = "skkeleton",
        matchers = { "skkeleton" },
        sorters = {},
        minAutoCompleteLength = 2,
      },
    }
    vim.fn["ddc#custom#patch_global"]("sourceOptions", dic)
    vim.fn["ddc#enable"]()
  end,
}
