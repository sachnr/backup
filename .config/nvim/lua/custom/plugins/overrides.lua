local function button(sc, txt, keybind)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 5,
    width = 36,
    align_shortcut = "right",
    hl = "AlphaButtons",
  }

  if keybind then
    opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
  end

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true) or ""
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

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
    "shellcheck",

    -- db
    "sqls",
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
  buttons = {
    val = {
      button("SPC f o", "  Recent projects ", ":Telescope projects<CR>"),
      button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
      button("SPC f g", "  Recent File  ", ":Telescope oldfiles<CR>"),
      button("SPC f w", "  Find Word  ", ":Telescope live_grep<CR>"),
      button("SPC b m", "  Bookmarks  ", ":Telescope marks<CR>"),
      button("SPC t h", "  Themes  ", ":Telescope themes<CR>"),
      button("SPC e s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
    },
  },
}

return M
