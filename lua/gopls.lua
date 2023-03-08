-- Require LSP configuration from the pluging so we can attach GOPLS to it
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.gopls.setup {
	cmd = { "gopls", "serve"},
	filetypes = {"go", "gomod"},
	root_dir = util.root_pattern{"go.work", "go.mod", ".git"},
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}
