return {
  {
    "vim-skk/skkeleton",
    dependencies = { "vim-denops/denops.vim" },
    keys = {
      { "<C-j>", "<Plug>(skkeleton-toggle)", mode = { "i", "c" }, desc = "Toggle Skkeleton" },
    },
    config = function()
      vim.cmd([[
        call skkeleton#config({
          \ 'globalDictionaries': ['~/.skk/SKK-JISYO.L'],
          \ 'completionRankFile': '~/.skk/rank.json',
          \ 'eggLikeNewline': v:true,
        \ })
      ]])
    end,
  },
  {
    "rinx/cmp-skkeleton",
    dependencies = {
      "vim-skk/skkeleton",
      "hrsh7th/nvim-cmp",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- opts.sources を nil チェックして初期化
      opts.sources = opts.sources or {}
      table.insert(opts.sources, { name = "skkeleton" })
    end,
  },
  {
    "delphinus/skkeleton_indicator.nvim",
    dependencies = { "vim-skk/skkeleton" },
    config = true,
  },
}
