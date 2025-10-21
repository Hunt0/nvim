return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = { "node_modules/*", "package%-lock.json", ".git/" },
            }
        })

        vim.keymap.set("n", "<leader>gr", function()
            require("telescope.builtin").lsp_references({ fname_width = 120 })
        end, { noremap = true, silent = true, desc = "LSP References (Telescope)" })

        vim.keymap.set("n", "<leader>ff", function()
            require("telescope.builtin").find_files()
        end, { desc = "Find Files (Telescope)" })

        vim.keymap.set("n", "<leader>fw", function()
            require("telescope.builtin").live_grep()
        end, { desc = "Live Grep (Telescope)" })
    end
}
