local overrides = require "custom.plugins.overrides"

return {

  -- Remove unused
  ["NvChad/nvterm"] = {
    disable = true,
  },

  -- =========================================================
  -- ================== Override configs ====================
  -- =========================================================

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["goolord/alpha-nvim"] = {
    after = "base46",
    disable = false,
    config = function()
      require "custom.plugins.alpha"
    end,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
    config = function()
      require "custom.plugins.whichkey"
    end,
  },

  -- =========================================================
  -- =================== Custom Plugins ======================
  -- =========================================================

  -- scrollbar
  ["petertriho/nvim-scrollbar"] = {
    config = function()
      require("scrollbar").setup {
        handle = {
          color = "#78B892",
        },
      }
    end,
  },

  -- formatter
  ["mhartington/formatter.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("formatter").setup {
        logging = true,
        filetype = {
          css = require("custom.plugins.formatters").prettier,
          html = require("custom.plugins.formatters").prettier,
          scss = require("custom.plugins.formatters").prettier,
          markdown = require("custom.plugins.formatters").prettier,
          typescriptreact = require("custom.plugins.formatters").prettier,
          typescript = require("custom.plugins.formatters").prettier,
          javascript = require("custom.plugins.formatters").prettier,
          javascriptreact = require("custom.plugins.formatters").prettier,
          json = require("custom.plugins.formatters").prettier,
          java = require("custom.plugins.formatters").clang_format,
          c = require("custom.plugins.formatters").clang_format,
          cpp = require("custom.plugins.formatters").clang_format,
          lua = require("custom.plugins.formatters").stylua,
          sh = require("custom.plugins.formatters").shfmt,
          python = require("custom.plugins.formatters").black,
        },
      }
    end,
  },

  -- autoclose tags in html, jsx only
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  -- error highlight
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end,
  },

  -- project management
  ["ahmedkhalf/project.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("project_nvim").setup {
        patterns = {
          ".git",
          "Makefile",
          "build/env.sh",
          "pom.xml",
          "rc.lua",
        },
        silent_chdir = false,
      }
      require("telescope").load_extension "projects"
    end,
  },

  -- markdown-preview
  ["iamcco/markdown-preview.nvim"] = {
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  --transparency
  ["xiyaowong/nvim-transparent"] = {
    config = function()
      require("transparent").setup {
        enable = true, -- boolean: enable transparent
        extra_groups = {
          "BufferLineTabClose",
          "BufferlineBufferSelected",
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineSeparator",
          "BufferLineIndicatorSelected",
        },
      }
    end,
  },

  --terminal
  ["akinsho/toggleterm.nvim"] = {
    config = function()
      require("toggleterm").setup {
        shade_terminals = true,
        shading_factor = "1",
      }
    end,
  },
  -- debugger
  ["mfussenegger/nvim-dap"] = {
    disable = false,
  },

  ["rcarriga/nvim-dap-ui"] = {
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end,
  },
}
