return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- @type lspconfig.options
      autoformat = false,
      servers = {
        phpactor = {
          filetypes = { "php", "blade" },
          settings = {
            phpactor = {
              filetypes = { "php", "blade" },
              files = {
                associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },
}
