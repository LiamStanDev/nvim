return function()
	local luasnip = require("luasnip")
	luasnip.setup({
		history = true,
		updateevents = "TextChanged,TextChangedI",
		delete_check_events = "TextChanged,InsertLeave",
		-- ext_opts = {
		-- 	[require("luasnip.util.types").choiceNode] = {
		-- 		activt = {
		-- 			virt_text = { { "●", "GruvboxOrange" } },
		-- 		},
		-- 	},
		-- },
	})

	-- let one file can use multiple snippet sources.
	luasnip.filetype_extend("typescriptreact", { "html" })

	require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets/" } })
	require("luasnip.loaders.from_vscode").load({ exclude = { "typescriptreact", "cs" } })

	-- key map
	local keymap = vim.keymap.set
	-- next
	keymap({ "i", "s" }, "<C-.>", function()
		if luasnip.expand_or_jumpable() then
			luasnip.expand_or_jump()
		end
	end)
	-- prev
	keymap({ "i", "s" }, "<C-,>", function()
		if luasnip.jumpable(-1) then
			luasnip.jump(-1)
		end
	end)
end
