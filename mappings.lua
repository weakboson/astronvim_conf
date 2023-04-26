-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- terminal
    -- https://zenn.dev/convers39/articles/fd58ab494bbffb#%E3%82%B3%E3%82%A2%E6%A9%9F%E8%83%BD
    ["<A-i>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle floating terminal" },
    -- ["<A-H>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Toggle horizontal terminal" },
    -- ["<A-V>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "Toggle vertical terminal" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    -- https://zenn.dev/convers39/articles/fd58ab494bbffb#%E3%82%B3%E3%82%A2%E6%A9%9F%E8%83%BD
    ["<A-i>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "toggle floating terminal" },
    -- ["<A-H>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "toggle horizontal terminal" },
    -- ["<A-V>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "toggle vertical terminal" },
  },
  i = {
    ["<C-j>"] = { "<Plug>(skkeleton-enable)", desc = "skkeleton enable" },
  },
  c = {
    ["<C-j>"] = { "<Plug>(skkeleton-enable)", desc = "skkeleton enable" },
  }
}
