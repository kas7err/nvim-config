local builtin = require('telescope.builtin')

-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set("n", "<leader>/", vim.cmd.Rg)
vim.keymap.set("n", "<leader>pf", vim.cmd.Files)

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-b>', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})

vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ft', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>ff', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fz', builtin.treesitter, {})
-- vim.keymap.set('n', '<leader>/', function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })


-- vim.keymap.set('n', '<leader>e', builtin.lsp_document_symbols, { desc = '[Document [Symbols}' })
-- vim.keymap.set('n', '<leader>es', builtin.lsp_dynamic_workspace_symbols, { desc = '[Workspace [Symbols' })

require('telescope').setup {
    defaults = {
        layout_config = {
            preview_cutoff = 10,
        },
    },
    pickers = {
        -- find_files = {
        --     theme = "dropdown",
        -- },
        -- git_files = {
        --     theme = "dropdown",
        -- },
        -- git_status = {
        --     theme = "dropdown",
        -- },
        -- git_branches = {
        --     theme = "dropdown",
        -- },
        -- help_tags = {
        --     theme = "dropdown",
        -- },
        -- current_buffer_fuzzy_find = {
        --     theme = "dropdown",
        -- },
        -- grep_string = {
        --     theme = "dropdown",
        -- },
        -- oldfiles = {
        --     theme = "dropdown",
        -- },
        -- buffers = {
        --     theme = "dropdown",
        -- },
        -- lsp_document_symbols = {
        --     theme = "dropdown",
        -- },
        -- lsp_dynamic_workspace_symbolsp = {
        --     theme = "dropdown",
        -- },
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}
require('telescope').load_extension('fzf')
