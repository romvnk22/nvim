
return {
        "preservim/tagbar",
		config = function()

		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>tb", ":TagbarToggle<CR>")
									       end
}

