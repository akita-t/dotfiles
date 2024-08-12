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
    "delphinus/skkeleton_indicator.nvim",
    dependencies = { "vim-skk/skkeleton" },
    config = true,
  },
}
