return {
	-- services installer
	{ "williamboman/mason.nvim", event = "VeryLazy", config = require("services.mason") },

	-- lsp
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			{
				"Hoffs/omnisharp-extended-lsp.nvim", -- for omnisharp decompile
				ft = "cs",
			},
			-- {
			-- 	"Decodetalkers/csharpls-extended-lsp.nvim", -- for charp_ls decompile
			-- 	ft = "cs",
			-- },
			"ray-x/lsp_signature.nvim",
		},
		config = require("services.lspconfig"),
	},
	{ "Hoffs/omnisharp-extended-lsp.nvim", event = "LspAttach" }, -- for decompile csharp

	-- formatting & linting
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {
			"jay-babu/mason-null-ls.nvim",
		},
		config = require("services.null-ls"),
	},

	-- dap
	{
		"mfussenegger/nvim-dap",
		event = "VeryLazy",
		dependencies = {
			"jay-babu/mason-nvim-dap.nvim",
			"theHamsta/nvim-dap-virtual-text",
		},
		init = require("services.dap").init,
		config = require("services.dap").config,
	},
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap",
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = require("ui.dapui"),
	},
}
