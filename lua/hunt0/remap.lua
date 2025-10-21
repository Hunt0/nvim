vim.keymap.set("i", "kj", "<Esc>", { noremap = true })
vim.keymap.set("n", "<localleader>f", ":b<SPACE>")
vim.keymap.set("n", "<localleader>b", "<cmd>b#<cr>")
vim.keymap.set("n", "<localleader>c", ":!")
vim.keymap.set("n", "<localleader>j", "o<Esc>")
vim.keymap.set("n", "<localleader>k", "O<Esc>")
vim.keymap.set("n", "<localleader>cwd", "<cmd>cd %:p:h<cr>")

vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { noremap = true })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { noremap = true })

vim.keymap.set("x", "p", '"_dP')
vim.keymap.set("x", "P", '"_dP')

-- LSP
vim.keymap.set("n", "<leader>gd", function()
    vim.lsp.buf.definition()
end, { desc = "Go to Definition" })

vim.keymap.set("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end, { desc = "Rename" })

vim.keymap.set("n", "<leader>ogd", function()
    require("omnisharp_extended").lsp_definition()
end, { desc = "Go to Definition (OmniSharp Extended)" })

vim.keymap.set("n", "<leader>i", vim.lsp.buf.code_action, { desc = "Code Action (fix imports, etc.)" })
