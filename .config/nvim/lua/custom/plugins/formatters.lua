local util = require "formatter.util"

local M = {}

M.prettier = {
  function()
    return {
      exe = "prettier",
      args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
      stdin = true,
    }
  end,
}

M.clang_format = {
  function()
    return {
      exe = "clang-format",
      args = {
        "-assume-filename",
        util.escape_path(util.get_current_buffer_file_name()),
      },
      stdin = true,
      try_node_modules = true,
    }
  end,
}

M.stylua = {
  function()
    return {
      exe = "stylua",
      args = {
        "--search-parent-directories",
        "--stdin-filepath",
        util.escape_path(util.get_current_buffer_file_path()),
        "--",
        "-",
      },
      stdin = true,
    }
  end,
}

M.shfmt = {
  function()
    local shiftwidth = vim.opt.shiftwidth:get()
    local expandtab = vim.opt.expandtab:get()

    if not expandtab then
      shiftwidth = 0
    end

    return {
      exe = "shfmt",
      args = { "-i", shiftwidth },
      stdin = true,
    }
  end,
}

M.black = {
  function()
    return {
      exe = "black",
      args = { "-q", "-" },
      stdin = true,
    }
  end,
}

return M
