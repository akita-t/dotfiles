return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    opts = function()
      local dap = require("dap")
      local mason_registry = require("mason-registry")
      local php_debug_path = mason_registry.get_package("php-debug-adapter"):get_install_path()

      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { php_debug_path .. "/extension/out/phpDebug.js" },
      }

      dap.configurations.php = {
        {
          name = "Listen for XDebug",
          type = "php",
          request = "launch",
          port = 9003,
          pathMappings = {
            {
              localRoot  = "${workspaceFolder}",
              remoteRoot = "/var/www/html",
            },
          },
          stopOnEntry = false,
        },
        {
          name = "Launch file",
          type = "php",
          request = "launch",
          program = "${file}",
          cwd = "${workspaceFolder}",
          pathMappings = {
            {
              localRoot  = "${workspaceFolder}",
              remoteRoot = "/var/www/html",
            },
          },
        },
      }
    end,
  }
}
