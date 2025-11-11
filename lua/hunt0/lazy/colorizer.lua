return {
    "norcalli/nvim-colorizer.lua",
    opts = { },
    config = function()
        require("colorizer").setup({
            html = { names = false }
        })
    end,
}
