return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      theme = "catppuccin"
    })
    local lazy_status = require("lazy.status") 
  end,
}
