-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.wildignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.conceallevel = 0

vim.keymap.set("i", "kj", "<Esc>", { noremap = true })
vim.keymap.set("n", "<localleader>f", ":b<SPACE>")
vim.keymap.set("n", "<localleader>b", ":b#")
vim.keymap.set("n", "<localleader>c", ":!")
vim.keymap.set("n", "<localleader>j", "o<Esc>")
vim.keymap.set("n", "<localleader>k", "O<Esc>")
vim.keymap.set("n", "<localleader>cwd", ":cd %:p:h")

--[[
map <leader>j o<Esc>
map <leader>k O<Esc>
mmap <leader>j o<Esc>
map <leader>k O<Esc>ap <leader>f :b<SPACE>
map <leader>e :e<SPACE>**/
map <leader>b :b#
map <leader>c :!
map <leader>cwd :cd %:p:h

inoremap kj <Esc>
  ]]
