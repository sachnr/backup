local M = {}

M.nvimtree = {
  git = {
    enable = true,
  },
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- python
    "black",
    "python-lsp-server",

    -- c,c++,java
    "clangd",
    "clang-format",
    "jdtls",

    -- web dev
    "css-lsp",
    "html-lsp",
    "json-lsp",
    "eslint-lsp",
    "prettierd",
    "vue-language-server",

    -- shell
    "shfmt",
    "bash-language-server",

    -- db
    "sqlls",
  },
}

M.treesitter = {
  ensure_installed = {
    "c",
    "cpp",
    "cmake",
    "lua",
    "bash",
    "css",
    "html",
    "dockerfile",
    "java",
    "javascript",
    "json",
    "markdown",
    "meson",
    "ninja",
    "php",
    "python",
    "r",
    "rasi",
    "regex",
    "rust",
    "ruby",
    "sql",
    "toml",
    "yaml",
    "vue",
    "typescript",
    "gitignore",
    "go",
    "latex",
    "scss",
  },
}

return M
