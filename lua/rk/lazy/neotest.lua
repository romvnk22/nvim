return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",

            -- "marilari88/neotest-vitest",
            -- "nvim-neotest/neotest-plenary",
            "nvim-neotest/neotest-python",
        },
        config = function()
            local neotest = require("neotest")
            neotest.setup({
                adapters = {
                    -- require("neotest-plenary"),
                    require("neotest-python"),
                    -- require("neotest-python")({
                    --     dap = {
                    --         justMyCode = false,
                    --         console = "integratedterminal",
                    --     },
                    --     args = { "--log-level", "DEBUG", "--quiet" },
                    --     runner = "pytest"
                    -- })
                    --
                    -- require("neotest-vitest"),
                    -- require("neotest-plenary").setup({
                    --     -- this is my standard location for minimal vim rc
                    --     -- in all my projects
                    --     min_init = "./scripts/tests/minimal.vim",
                    -- }),
                }
            })

            vim.keymap.set("n", "<leader>tc", function()
                -- neotest.run.run()
                neotest.run.run(vim.fn.expand("%"))
            end)
        end,
    },
}
