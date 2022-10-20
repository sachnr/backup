local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

require("base46").load_highlight "bufferline"

local options = {
  indicator = {
    icon = "▎",
    style = "icon",
  },
  offsets = {
    {
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      separator = true,
    },
    {
      filetype = "packer",
      text = "Packer",
      highlight = "PanelHeading",
      padding = 1,
    },
  },
  color_icons = false,
  separator_style = "thick",
  diagnostics = "nvim_lsp",
}

local highlights = {
  buffer_selected = {
    bold = true,
  },
}

bufferline.setup {
  highlights = highlights,
  options = options,
}
