return {
    { "mason-org/mason.nvim", name = "mason", opts = {} },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = {
                "gopls",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("gopls", {
                settings = {
            gopls = {
            gofumpt = true,
            staticcheck = true,

            analyses = {
              unusedparams = true,
              unusedwrite = true,
              nilness = true,
              shadow = true,
            },

            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
          },
        },
      })
    end,
  },
}
