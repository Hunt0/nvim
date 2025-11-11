-- IC Orange PPL Neovim colorscheme
-- Matches the Ghostty theme palette

local colors = {
    black = "#000000",
    red = "#c13900",
    green = "#a4a900",
    yellow = "#caaf00",
    blue = "#bd6d00",
    magenta = "#fc5e00",
    cyan = "#f79500",
    white = "#ffc88a",
    bright_black = "#6a4f2a",
    bright_red = "#ff8c68",
    bright_green = "#f6ff40",
    bright_yellow = "#ffe36e",
    bright_blue = "#ffbe55",
    bright_magenta = "#fc874f",
    bright_cyan = "#c69752",
    bright_white = "#fafaff",
    comment = "#946e44",
    bg = "#262626",
    fg = "#ffcb83",
    --fg = "#fcd9a9", // slightly lighter
    cursor = "#fc531d",
    cursor_text = "#ffc88a",
    selection_bg = "#c14020",
    selection_fg = "#ffc88a",
}

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "ic_orange_ppl"

-- Basic editor colors
local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hi("Normal",        { fg = colors.fg, bg = "none" })
hi("NormalNC",      { fg = colors.fg, bg = "none" })
hi("SignColumn",    { bg = "none" })           -- no solid gutter
hi("FoldColumn",    { bg = "none" })
hi("EndOfBuffer",   { bg = "none" })

hi("Cursor",        { fg = colors.cursor_text, bg = colors.cursor })
hi("CursorLine",    { bg = "#2e2e2e" })
hi("CursorColumn",  { bg = "#2e2e2e" })
hi("ColorColumn",   { bg = "#333333" })
hi("Visual",        { fg = colors.selection_fg, bg = colors.selection_bg })
hi("LineNr",        { fg = colors.bright_black, bg = "none" })
hi("CursorLineNr",  { fg = colors.yellow, bg = "none", bold = true })
hi("Comment",       { fg = colors.comment, italic = true })
hi("Constant",      { fg = colors.yellow })
hi("String",        { fg = colors.yellow })
hi("Character",     { fg = colors.yellow })
hi("Number",        { fg = colors.yellow })
hi("Boolean",       { fg = colors.yellow })
hi("Identifier",    { fg = colors.cyan })
hi("Function",      { fg = colors.bright_magenta })
hi("Statement",     { fg = colors.bright_red })
hi("Conditional",   { fg = colors.bright_red })
hi("Repeat",        { fg = colors.bright_red })
hi("Label",         { fg = colors.bright_magenta })
hi("Operator",      { fg = colors.fg })
hi("Keyword",       { fg = colors.bright_blue })
hi("Exception",     { fg = colors.red })
hi("PreProc",       { fg = colors.yellow })
hi("Include",       { fg = colors.bright_yellow })
hi("Define",        { fg = colors.bright_yellow })
hi("Macro",         { fg = colors.bright_yellow })
hi("Type",          { fg = colors.bright_blue })
hi("StorageClass",  { fg = colors.bright_magenta })
hi("Structure",     { fg = colors.bright_magenta })
hi("Typedef",       { fg = colors.bright_blue })
hi("Special",       { fg = colors.bright_cyan })
hi("Underlined",    { underline = true, fg = colors.bright_blue })
hi("Error",         { fg = colors.white, bg = colors.red, bold = true })
hi("Todo",          { fg = colors.bright_magenta, bold = true })
hi("Pmenu",         { fg = colors.fg, bg = "#333333" })
hi("PmenuSel",      { fg = colors.selection_fg, bg = colors.selection_bg })
hi("StatusLine",    { fg = colors.bg, bg = colors.fg })
hi("StatusLineNC",  { fg = colors.bright_black, bg = "#333333" })
hi("VertSplit",     { fg = "#444444", bg = colors.bg })
hi("Search",        { fg = colors.selection_fg, bg = colors.selection_bg })
hi("IncSearch",     { fg = colors.bg, bg = colors.bright_yellow })
hi("MatchParen",    { fg = colors.bright_yellow, bold = true })
hi("DiagnosticError", { fg = colors.red })
hi("DiagnosticWarn",  { fg = colors.yellow })
hi("DiagnosticInfo",  { fg = colors.cyan })
hi("DiagnosticHint",  { fg = colors.bright_blue })
hi("DiffAdd",       { fg = colors.bright_green })
hi("DiffChange",    { fg = colors.bright_yellow })
hi("DiffDelete",    { fg = colors.red })
hi("DiffText",      { fg = colors.bright_blue, bold = true })

-- Trouble.nvim and LSP diagnostics integration
hi("TroubleText",        { fg = colors.fg })
hi("TroubleCount",       { fg = colors.bright_yellow, bold = true })
hi("TroubleNormal",      { fg = colors.fg, bg = colors.bg })
hi("TroubleIndent",      { fg = colors.bright_black })
hi("TroubleFoldIcon",    { fg = colors.bright_black })
hi("TroubleLocation",    { fg = colors.bright_magenta })
hi("TroubleSource",      { fg = colors.bright_blue })
hi("TroubleCode",        { fg = colors.bright_cyan })
hi("TroubleFilename",    { fg = colors.bright_yellow, bold = true })

-- Match the icon colors to the diagnostic levels
hi("TroubleError",       { fg = colors.red })
hi("TroubleWarning",     { fg = colors.yellow })
hi("TroubleInformation", { fg = colors.cyan })
hi("TroubleHint",        { fg = colors.bright_blue })
hi("TroubleOther",       { fg = colors.bright_magenta })

-- Make the background consistent
hi("TroublePreview",     { bg = "none" })
hi("TroubleLspPos",      { fg = colors.bright_black })

-- Trouble.nvim background fix
hi("TroubleNormal",  { fg = colors.fg, bg = "none" })
hi("TroubleNormalNC",{ fg = colors.fg, bg = "none" })

hi("TroublePreview", { fg = colors.fg, bg = "none" })
hi("TroubleIndent",  { fg = colors.bright_black, bg = "none" })
hi("TroubleFoldIcon",{ fg = colors.bright_black, bg = "none" })


-- Make directory paths use primary orange
hi("Directory", { fg = colors.bright_magenta, bg = "none", bold = true })

hi("TelescopePath", { fg = colors.bright_magenta })

hi("TroubleFilename", { fg = colors.bright_magenta, bold = true })

-- Treesitter highlights
hi("@variable",      { fg = colors.fg })
hi("@property",      { fg = colors.fg })
hi("@parameter",     { fg = colors.fg })
hi("@field",         { fg = colors.fg })
hi("@function.call", { fg = colors.fg })

hi("@punctuation",           { fg = colors.fg })
hi("@punctuation.delimiter", { fg = colors.fg })
hi("@punctuation.bracket",   { fg = colors.fg })
hi("@punctuation.special",   { fg = colors.fg })
