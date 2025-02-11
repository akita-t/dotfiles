return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function ()
    require("oil").setup({
      view_options = {
        show_hidden = true,
      }
    })

    -- set keymaps
    local keymap = vim.keymap
    keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
  end
}
