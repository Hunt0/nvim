return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua",
                "rust",
                "bash",
                "javascript",
                "typescript",
                "tsx",
                "c_sharp"
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
