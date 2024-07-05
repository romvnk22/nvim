return {
        "opdavies/toggle-checkbox.nvim",
        config = function()
        require('toggle-checkbox')

        vim.keymap.set(
            "n",
            "<leader>ay",
            ":lua require('toggle-checkbox').toggle()<CR><ESC>")

        vim.keymap.set(
            "n",
            "<leader>at",
            ":ToggleCheckbox<CR><ESC>A #todo<ESC>"
        )
        end
}
