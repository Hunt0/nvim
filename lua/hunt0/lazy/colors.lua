return {
    {
        "rose-pine/neovim",
        config = function()
            require('rose-pine').setup({
                styles = {
                    italic = false,
                    transparency = true,
                }
            })

            vim.cmd.colorscheme("rose-pine-moon")

            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
}
