return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  keys = {
    {
      "<leader>j",
      function()
        require("treesj").toggle()
      end,
      mode = "n",
      desc = "Toggle split/join",
    },
    {
      "<leader>J",
      function()
        require("treesj").toggle { split = { recursive = true } }
      end,
      mode = "n",
      desc = "Toggle split recursively",
    },
  },
}
