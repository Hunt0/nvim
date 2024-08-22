return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua",
                "rust",
                "bash"
            },
            sync_install = false,
            auto_install = false,
            indent = {
                enable = true
            },
            highlight = {
                enable = true,
            },
        })
    end
}
