return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "auto", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        indent_blankline = {
          enabled = true,
          scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
          colored_indent_levels = false,
        },
        nvimtree = true,
        treesitter = true,
        markdown = true,
        mason = false,
        nvim_surround = false,
        telescope = {
          enabled = true,
          -- style = "nvchad"
        },
        lsp_trouble = false,
      },
    })

    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
  end,
}
