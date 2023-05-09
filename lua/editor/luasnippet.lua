return function()
	local snippet_path = vim.fn.stdpath("config") .. "/snips/"

	if not vim.tbl_contains(vim.opt.rtp:get(), snippet_path) then
		vim.opt.rtp:append(snippet_path)
	end
	local luasnip = require("luasnip")
	luasnip.setup({
		history = true,
		updateevents = "TextChanged,TextChangedI",
		delete_check_events = "TextChanged,InsertLeave",
	})

	-- let one file can use multiple snippet sources.
	luasnip.filetype_extend("typescriptreact", { "html", "javascript" })

	require("luasnip.loaders.from_lua").lazy_load()
	require("luasnip.loaders.from_vscode").lazy_load()
	require("luasnip.loaders.from_snipmate").lazy_load()
end
