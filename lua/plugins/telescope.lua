return {
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader>pf", "<cmd> Telescope find_files <cr>", },
            { "<leader>ps", function()
                require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
            end },
        },
        cmd = "Telescope",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {},
                    },
                },

                defaults = {
                    mappings = {
                        i = {
                            ["<C-y>"] = "select_default",
                        },
                    },
                },
            })

            require("telescope").load_extension("ui-select")
        end,
    },
}
