-- Store in vim.g since multiple plugins use for lazy loading and it should be
-- faster than requiring the module in each of them.
vim.g.known_fts = { "go", "rust", "lua", "vimdoc", "zig", }

local M = {}

-- Creates the capabilities for a language server. If capabilities is empty or
-- nil, the returned capabilities will be cmp-nvim-lsp's default capabilities.
M.MakeClientCapabilities = function(capabilities)
    if capabilities == {} or capabilities == nil then
        return require("cmp_nvim_lsp").default_capabilities()
    end

    return vim.tbl_deep_extend("force", require("cmp_nvim_lsp").default_capabilities(), capabilities)
end

-- Returns the language servers using the default capabilities.
-- The passed argument `lsp` should be `require("lspconfig")`, however as they
-- should already be required before calling this function, they are simply
-- passed here.
M.GetDefaultServers = function(lsp)
    return {
        lsp.gopls,
        lsp.rust_analyzer,
        lsp.lua_ls,
        lsp.zls,
    }
end

return M
