local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup({
  inlay_hints = {
    type_hints = { enabled = false },
    parameter_hints = { enabled = false },
    enabled = false,
  },
})
