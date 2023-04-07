require 'nvim-treesitter.configs'.setup {
    ensure_installed = {"go", "php", "help", "javascript", "typescript", "lua" },

    sync_install = false,

    auto_install = true,

    indent = {
        enable = true
    },

    highlight = {
        -- enable = true,
        enable = true,

        additional_vim_regex_highlighting = false,
    },
}
