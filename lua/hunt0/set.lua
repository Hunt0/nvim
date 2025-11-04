vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.wildignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.wrap = false
vim.opt.conceallevel = 0
vim.opt.termguicolors = true

vim.cmd("colorscheme ic_orange_ppl")

-- ONLY FOR WINDOWS + GIT BASH
if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.opt.shellslash = true

    if (os.getenv("SHELL") and os.getenv("SHELL"):find("bash")) then
        vim.opt.shell = [["C:\Users\brandon.hunt\AppData\Local\Programs\Git\bin\bash.exe"]]
        vim.opt.shellcmdflag = "-c"
        vim.opt.shellredir = ">%s 2>&1"
        vim.opt.shellpipe = "2>&1| tee"
        vim.opt.shellquote = ""
        vim.opt.shellxquote = ""
        vim.opt.shellxescape = ""
        vim.env.TMP = "/tmp"
    end
end
