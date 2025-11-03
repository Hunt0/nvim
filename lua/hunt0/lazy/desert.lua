return {
  "uhs-robert/oasis.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('oasis').setup({
      style = "desert",
    })
  end
}
