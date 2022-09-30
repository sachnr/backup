local M = {}

M.disabled = {
  n = {
    ["<leader>fm"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>fm"] = { "<cmd> :Format <CR>", "formatter" },
    ["<leader>tr"] = { "<cmd> :TroubleToggle <CR>", "errors" },
    ["<leader>fo"] = { "<cmd> :Telescope projects <CR>", "projects" },
    ["<leader>fg"] = { "<cmd> :Telescope oldfiles <CR>", "oldfiles" },
  },
}

return M
