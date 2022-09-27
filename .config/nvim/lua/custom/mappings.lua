local M = {}

M.disabled = {
  n = {
    ["<leader>fm"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>fo"] = { "<cmd> :Format <CR>", "formatter" },
  },
}

return M
