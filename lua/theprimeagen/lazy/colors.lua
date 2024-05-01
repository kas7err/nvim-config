function ColorMyPencils(color)
	color = color or "rose-pine"
	-- color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                -- disable_background = true,
                styles = {
                    italic = false,
                },
            })

            vim.cmd("colorscheme rose-pine")

            ColorMyPencils()
        end
    },


}
