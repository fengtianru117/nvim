local overrides = require "custom.plugins.overrides"

return {

  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- override cmp
  ["hrsh7th/nvim-cmp"] = {
    override_options = function()
      local cmp = require "cmp"

      return {
        mapping = {
          ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          },
        },
      }
    end,
  },

  ["NvChad/nvterm"] = {
    override_options = overrides.nvterm,
  },

  -- lspsaga
  ["glepnir/lspsaga.nvim"] = {},

  ["vim-test/vim-test"] = {},

  ["mfussenegger/nvim-dap"] = {},

  ["rcarriga/nvim-dap-ui"] = {},

  ["mg979/vim-visual-multi"] = {},

  -- ["iamcco/markdown-preview.nvim"] = {
  --   config = function()
  --     vim.fn["mkdp#util#install"]()
  --   end,
  -- },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
