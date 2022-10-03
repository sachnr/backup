local M = {}
local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

M.disabled = {
  n = {
    ["<leader>x"] = "",
    ["<C-c>"] = "",
    ["<leader>rn"] = "",
    ["<leader>uu"] = "",
    ["<leader>tt"] = "",
    ["gD"] = "",
    ["gd"] = "",
    ["K"] = "",
    ["gi"] = "",
    ["<leader>ls"] = "",
    ["<leader>D"] = "",
    ["<leader>ra"] = "",
    ["<leader>ca"] = "",
    ["gr"] = "",
    ["<leader>f"] = "",
    ["[d"] = "",
    ["d]"] = "",
    ["<leader>wa"] = "",
    ["<leader>wr"] = "",
    ["<leader>wl"] = "",
    ["<leader>ff"] = "",
    ["<leader>fm"] = "",
    ["<leader>fa"] = "",
    ["<leader>fw"] = "",
    ["<leader>fb"] = "",
    ["<leader>fh"] = "",
    ["<leader>fo"] = "",
    ["<leader>tk"] = "",
    ["<leader>cm"] = "",
    ["<leader>gt"] = "",
    ["<leader>pt"] = "",
    ["<leader>th"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
    ["<leader>wK"] = "",
    ["<leader>wk"] = "",
    ["<leader>cc"] = "",
  },
  t = {
    ["<leader>e"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
  },
}

M.general = {
  -- =========================================================
  -- ===================== normal mode =======================
  -- =========================================================
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    -- split vertical or horizontal
    ["<leader>v"] = { "<cmd> :vsplit <CR>", "split vertical" },
    ["<leader>h"] = { "<cmd> :split <CR>", "split horizontal" },
    -- formatter
    ["<leader>f"] = { "<cmd> :Format <CR>", "formatter" },
    -- nvterm
    ["<leader>`"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
    -- tabufline
    ["<C-w>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
    ["<leader>n"] = { "<cmd> enew <CR>", "new buffer" },
    -- markdown-preview
    ["<leader>p"] = { "<cmd> :MarkdownPreviewToggle <CR>", "preview-md" },
    -- nvimtree
    ["<S-n>"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  },

  -- =========================================================
  -- ===================== visual mode =======================
  -- =========================================================
  v = {},

  -- =========================================================
  -- ==================== terminal mode ======================
  -- =========================================================
  t = {
    -- toggle terminal (terminal mode)
    ["<leader>`"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
    ["<C-c>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" },
    ["<S-n>"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  },
}

return M
