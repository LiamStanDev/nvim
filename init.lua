-- the core plugins
local g = require("core")

-- set color theme here
g.colorscheme = "onedark"

-- whether to see navigator bar in the top
g.navigator_on = true

-- set the logo. see ./lua/ui/style/header.lua
g.dashboard_logo = "AstronautSmall"

-- border style
g.cmp_window_border = "single" -- none, single, rounded
g.which_key_window_border = "single" -- none, single, double, shadow

-- show inline hint
g.open_type_hint = true -- for variable
g.open_parameter_hint = false

-- completion menu with text
g.cmp_kind_text = true

-- file filter for explorer(only for dotfiles)
g.filter_files = {
	".git",
	".DS_Store",
	".vscode",
}

-- register tree-sitter code highlight
g.code_hight_servers = {
	"json",
	"javascript",
	"tsx",
	"html",
	"css",
	"markdown",
	"markdown_inline",
	"bash",
	"lua",
	"vim",
	"dockerfile",
	"gitignore",
	"cpp",
	"cmake",
	"c_sharp",
	"rust",
	"sql",
	"cpp",
}
-- register lsp server for auto completion
g.lsp_servers = { -- see https://github.com/williamboman/mason-lspconfig.nvim
	-- "tsserver",
	"html",
	"jsonls",
	"lua_ls",
	"cssls",
	"pylsp", -- python lsp
	"bashls",
	"dockerls",
	"docker_compose_language_service",
	"taplo", -- toml lsp
	"lemminx", -- xml lsp
	"tailwindcss",
	"omnisharp",
	"rust_analyzer",
	-- "prismals",
	"gopls",
	"clangd",
}

-- register formatting and diagnostics server
g.null_ls_servers = {
	"prettier",
	"black", -- python formatter
	"stylua", -- lua formatter
	"beautysh", -- bash formatter
	-- "csharpier", -- csharp formatter
	"eslint_d",
	"rustfmt", -- rust formatter
	"prismaFmt",
	"gofmt",
	"clang_format",
}

-- register debuger server
g.dap_servers = {
	"python",
	"cppdbg",
	"coreclr", -- csharp
	-- "codelldb",
	"delve", -- go
}

-- setup all plugin
require("plugins-setup")

-- for neovide
if vim.g.neovide then
	vim.g.neovide_input_use_logo = false -- true on macOS
	vim.g.neovide_input_macos_alt_is_meta = true
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
	vim.g.neovide_scale_factor = 1.0
	vim.g.neovide_padding_top = 1
	vim.g.neovide_padding_bottom = 1
	vim.g.neovide_padding_right = 1
	vim.g.neovide_padding_left = 1
	vim.g.neovide_transparency = 0.8
	vim.g.neovide_refresh_rate = 60
	vim.g.neovide_refresh_rate_idle = 5 -- for not using
	vim.g.neovide_remember_window_size = true
end
