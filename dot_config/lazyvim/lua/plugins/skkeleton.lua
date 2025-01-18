return {
  {
    "vim-skk/skkeleton",
    dependencies = { "vim-denops/denops.vim"},
    config = function()
        vim.cmd([[ call skkeleton#config({
          \ 'globalDictionaries': ['~/.skk/SKK-JISYO.L'],
          \ 'completionRankFile': '~/.skk/rank.json',
          \ 'eggLikeNewline': v:true,
          \ })
        ]])
    end,
  },
  {
    "rinx/cmp-skkeleton",
    dependencies = { "vim-skk/skkeleton", "hrsh7th/nvim-cmp" },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, { name = "skkeleton" })
    end,
  },
  {
    "delphinus/skkeleton_indicator.nvim",
    dependencies = { "vim-skk/skkeleton" },
    config = true,
  },
}
