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
    -- Language Servers
    "lua-language-server",
    "python-lsp-server",
    "clangd",
    "jdtls",
    "html-lsp",
    "json-lsp",
    "eslint-lsp",
    "css-lsp",
    "bash-language-server",
    "sqlls",

    -- Formatters
    "black",
    "stylua",
    "clang-format",
    "prettierd",
    "vue-language-server",
    "shfmt",

    -- debuggers
    "firefox-debug-adapter",
    "java-debug-adapter",
    "java-test",
    "debugpy",
    "cpptools",
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
