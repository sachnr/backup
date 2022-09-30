local M = {}

M.nvimtree = {
  git = {
    enable = true,
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
    "eslint_d",
    "eslint-lsp",
    "vue-language-server",

    -- shell
    "shfmt",
    "bash-language-server",
    "shellcheck",
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

M.alpha = {
  header = {
    val = {
      " ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓",
      " ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
      "▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░",
      "▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ",
      "▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒",
      "░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░",
      "░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░",
      "   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ",
      "         ░    ░  ░    ░ ░        ░   ░         ░   ",
      "                                ░                  ",
    },
  },
}

return M
