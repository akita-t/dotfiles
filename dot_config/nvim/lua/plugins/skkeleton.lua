return {
  {
    "vim-skk/skkeleton",
    dependencies = { "vim-denops/denops.vim", "Shougo/ddc.vim"},
    config = function()
      vim.cmd([[ call skkeleton#config({
        \ 'globalDictionaries': ['~/.skk/SKK-JISYO.L'],
        \ 'completionRankFile': '~/.skk/rank.json',
        \ 'eggLikeNewline': v:true,
        \ })
      ]])
      vim.cmd([[ call ddc#custom#patch_global( 'sources', ['skkeleton'])]])
      vim.cmd([[ call ddc#custom#patch_global( 'sourceOptions', {
        \   '_': {
        \     'matchers': ['matcher_head'],
        \     'sorters': ['sorter_rank']
        \   },
        \   'skkeleton': {
        \     'mark': 'skkeleton',
        \     'matchers': [],
        \     'sorters': [],
        \     'converters': [],
        \     'isVolatile': v:true,
        \     'minAutoCompleteLength': 1,
        \   },
        \ })
      ]])
      vim.cmd( [[call ddc#enable()]])
      vim.cmd([[ call ddc#custom#patch_global('ui', 'pum')]])
    end,
  },
  {
    "delphinus/skkeleton_indicator.nvim",
    dependencies = { "vim-skk/skkeleton" },
    config = true,
  },
  {
    "Shougo/ddc.vim",
    "Shougo/pum.vim",
    "Shougo/ddc-ui-pum"
  },
}
