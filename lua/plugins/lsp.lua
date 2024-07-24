return {
    "neovim/nvim-lspconfig",
    ft = vim.g.known_fts,
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        -- Server setup
        local lsp = require("lspconfig")
        local configs = require("config.lsp")
        local default_servers = configs.GetDefaultServers(lsp)
        local default_capabilities = configs.MakeClientCapabilities()

        for _, server in ipairs(default_servers) do
            server.setup {
                capabilities = default_capabilities
            }
        end

        -- Other configuration:
        -- lsp.servername.setup {
        --     capabilities = ___,
        -- }

        -- Get Maximum width for hover window (75% of buffer width)
        local width = vim.api.nvim_win_get_width(vim.api.nvim_get_current_win())
        local maxWidth = math.floor(width * 0.75 + 0.5)

        -- Make 'hover' window look like 'cmp' autocompletions
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
            vim.lsp.handlers.hover, {
                -- Credit for borders: nvchad/base46
                border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
                max_width = maxWidth,
            }
        )

        -- Keymaps
        vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover)
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

        -- Telescope lsp actions
        vim.keymap.set("n", "<leader>gs", function()
            require("telescope.builtin").lsp_document_symbols()
        end)
        vim.keymap.set("n", "<leader>gr", function()
            require("telescope.builtin").lsp_references()
        end)
        vim.keymap.set("n", "<leader>ca", function()
            require("telescope") -- load telescope for code-actions
            vim.lsp.buf.code_action()
        end)
    end
}
