local borders = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' }

return {
    "hrsh7th/nvim-cmp",
    -- Loads plugin on exisiting files or whenever entering insertion mode.
    event = { "BufReadPost", "InsertEnter" },
    config = function()
        -- Credit for borders: nvchad/base46
        local cmp = require("cmp")
        local select_behavior = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            window = {
                -- For more customization check out
                -- nvim-cmp/lua/cmp/config/default.lua or cmp.ConfigSchema
                completion = {
                    border = borders,
                },
                documentation = {
                    border = borders,
                },
            },
            mapping = {
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<C-n>"] = cmp.mapping.select_next_item(select_behavior),
                ["<C-p>"] = cmp.mapping.select_prev_item(select_behavior),
                ["<CR>"] = nil, -- do not complete on <CR>
            },
            -- Use lsp and snippets
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
            }, {
                { name = "buffer" },
            }),
        })
    end
}
