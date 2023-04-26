return {
  -- lazy = false,
  "vim-skk/skkeleton",
  dependencies = { "vim-denops/denops.vim" },
  config = function()
    return {
      defaults = {
        globalJisyo = '~/.skk/SKK-JISYO.L',
      },
    }
  end,
}
