local present, wk = pcall(require, "which-key")

if not present then
	return
end

require("base46").load_highlight("whichkey")

local options = {

	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "  ", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},

	popup_mappings = {
		scroll_down = "<c-d>", -- binding to scroll down inside the popup
		scroll_up = "<c-u>", -- binding to scroll up inside the popup
	},

	window = {
		border = "none", -- none/single/double/shadow
	},

	layout = {
		spacing = 6, -- spacing between columns
	},

	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },

	triggers_blacklist = {
		-- list of mode / prefixes that should never be hooked by WhichKey
		i = { "j", "k" },
		v = { "j", "k" },
	},
}

-- Normal mpde Mappings
local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
	-- Search
	t = {
		name = "Telescope/Search",
		p = { "<cmd> :Telescope projects <CR>", "projects" },
		f = { "<cmd> Telescope find_files <CR>", "find files" },
		a = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
		w = { "<cmd> Telescope live_grep <CR>", "live grep" },
		b = { "<cmd> Telescope buffers <CR>", "find buffers" },
		m = { "<cmd> Telescope help_tags <CR>", "help page" },
		o = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
		l = { "<cmd> Telescope keymaps <CR>", "show keys" },
		t = { "<cmd> Telescope terms <CR>", "pick hidden term" },
		h = { "<cmd> Telescope themes <CR>", "nvchad themes" },
		k = { "<cmd> Telescope marks <CR>", "Bookmarks" },
	},
	-- trouble
	e = {
		name = "Erorrs",
		t = { "<cmd> :TroubleToggle <CR>", "Toggle Errors" },
		r = { "<cmd> :TroubleToggle <CR>", "Refresh Errors" },
	},
	-- Git
	g = {
		name = "Git",
		s = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		d = {
			"<cmd>Gitsigns diffthis HEAD<cr>",
			"Diff",
		},
		l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
	},
	-- lsp
	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		d = {
			"<cmd>Telescope lsp_document_diagnostics<cr>",
			"Document Diagnostics",
		},
		w = {
			"<cmd>Telescope lsp_workspace_diagnostics<cr>",
			"Workspace Diagnostics",
		},
		f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
		j = {
			"<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
			"Next Diagnostic",
		},
		k = {
			"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
			"Prev Diagnostic",
		},
		l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
		q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
		S = {
			"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
			"Workspace Symbols",
		},
	},
	w = {
		name = "whichKey",
		a = {
			function()
				vim.cmd("WhichKey")
			end,
			"which-key all keymaps",
		},
		k = {
			function()
				local input = vim.fn.input("WhichKey: ")
				vim.cmd("WhichKey " .. input)
			end,
			"which-key query lookup",
		},
	},
	d = {
		name = "Dashboard",
		b = { "<cmd> :Alpha <CR>", "Open Dashboard" },
		s = { ":e $MYVIMRC | :cd %:p:h <CR>", "Settings/vimrc" },
	},
	-- Resize
	r = {
		name = "resize",
		h = { "<cmd> :vertical resize +5 <CR>", "Resize Right" },
		j = { "<cmd> :resize +5 <CR>", "Resize Down" },
		k = { "<cmd> :resize -5 <CR>", "Resize Up" },
		l = { "<cmd> :vertical resize -5 <CR>", "Resize Left" },
	},
}

-- Terminal mappings
local topts = {
	mode = "t",
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local tmappings = {
	r = {
		name = "resize",
		h = { "<cmd> :vertical resize +5 <CR>", "Resize Right" },
		j = { "<cmd> :resize +5 <CR>", "Resize Down" },
		k = { "<cmd> :resize -5 <CR>", "Resize Up" },
		l = { "<cmd> :vertical resize -5 <CR>", "Resize Left" },
	},
}

wk.setup(options)
wk.register(mappings, opts)
wk.register(tmappings, topts)
