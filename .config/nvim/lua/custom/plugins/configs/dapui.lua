local dap_ui_status_ok, dapui = pcall(require, "dapui")
if not dap_ui_status_ok then
  return
end

local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
  return
end

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "Debug", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "➤", texthl = "DiagnosticInfo", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointCondition", { text = "鬒", texthl = "TSTodo", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = " ", texthl = "TSError", linehl = "", numhl = "" })
vim.fn.sign_define("DapLogPoint", { text = " ", texthl = "DiagnosticHint", linehl = "", numhl = "" })
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

--dap.defaults.fallback.terminal_win_cmd = 'resize 10'
dap.defaults.fallback.terminal_win_cmd = "botright " .. math.floor(vim.fn.winheight(vim.fn.winnr()) / 6) .. "new"

require("dapui").setup {
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  --expand_lines = vim.fn.has("nvim-0.7"),
  expand_lines = false,
  layouts = {
    {
      --open_on_start = true,
      -- You can change the order of elements in the sidebar
      elements = {
        -- Provide as ID strings or tables with "id" and "size" keys
        { id = "stacks", size = 0.20 },
        { id = "breakpoints", size = 0.20 },
        {
          id = "scopes",
          size = 0.40, -- Can be float or integer > 1
        },
        { id = "watches", size = 0.20 },
      },
      size = math.floor(vim.fn.winwidth(vim.fn.winnr()) / 4),
      position = "left", -- Can be "left", "right", "top", "bottom"
    },
    {
      elements = {
        "repl",
      },
      size = math.floor(vim.fn.winheight(vim.fn.winnr()) / 6),
      position = "top",
    },
    {
      elements = {
        "console",
      },
      size = math.floor(vim.fn.winheight(vim.fn.winnr()) / 6),
      position = "bottom",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
}
