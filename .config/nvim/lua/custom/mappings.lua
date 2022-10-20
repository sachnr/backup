local M = {}
local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

M.disabled = {
  i = {
    ["<C-b>"] = "",
    ["<C-e>"] = "",
  },
  n = {
    ["<leader>x"] = "",
    ["<Bslash>"] = "",
    ["<S-Tab>"] = "",
    ["<TAB>"] = "",
    ["<leader>e"] = "",
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
    ["<leader>`"] = { "<Cmd> :ToggleTerm <CR>", "toggle horizontal term" },
    -- bufferline
    ["<Bslash>"] = { " <Cmd> BufferLinePick <CR>", "Pick Buffer" },
    ["<TAB>"] = { " <Cmd> BufferLineCycleNext <CR>", "Next Buffer" },
    ["<S-Tab>"] = { " <Cmd> BufferLineCyclePrev <CR>", "Prev Buffer" },
    ["<leader>q"] = {
      function()
        require("bufdelete").bufdelete(0, true)
      end,
      "Close Buffer",
    },
    ["<leader>n"] = { "<cmd> enew <CR>", "new buffer" },
    -- markdown-preview
    ["<leader>p"] = { "<cmd> :MarkdownPreviewToggle <CR>", "preview-md" },
    -- nvimtree
    ["<leader>1"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
    -- copy all
    ["<leader>C"] = { "<cmd> %y+ <CR>", "copy whole file" },
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
    ["<leader>`"] = { "<Cmd> :ToggleTerm <CR>", "toggle horizontal term" },
    ["<S-n>"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  },
}

return M
