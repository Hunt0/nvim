local lspconfig = require("lspconfig")
local rust_tools = require("rust-tools")

lspconfig.rust_analyzer.setup({})
rust_tools.setup({
  tools = {
    inlay_hints = {
      auto = false,
      show_parameter_hints = false,
    },
  },
})
