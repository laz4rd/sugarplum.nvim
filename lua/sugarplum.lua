-- lua/sugarplum.lua
local M = {}

local c = {
  bg = "#111147",
  fg = "#db7ddd",

  black = "#111147",
  red = "#5ca8dc",
  green = "#53b397",
  yellow = "#249a84",
  blue = "#db7ddd",
  magenta = "#d0beee",
  cyan = "#f9f3f9",
  white = "#a175d4",

  bright_black = "#44447a",
  bright_red = "#5cb5dc",
  bright_green = "#52deb5",
  bright_yellow = "#01f5c7",
  bright_blue = "#fa5dfd",
  bright_magenta = "#c6a5fd",
  bright_cyan = "#ffffff",
  bright_white = "#b577fd",

  cursor = "#53b397",
  selection_bg = "#5ca8dc",
  selection_fg = "#ead8ff",
}

function M.apply()
  local set = vim.api.nvim_set_hl

  -- Core UI
  set(0, "Normal", { fg = c.fg, bg = c.bg })
  set(0, "NormalFloat", { fg = c.fg, bg = c.bg })
  set(0, "Cursor", { fg = c.bg, bg = c.cursor })
  set(0, "Visual", { fg = c.selection_fg, bg = c.selection_bg })
  set(0, "LineNr", { fg = c.bright_black })
  set(0, "CursorLineNr", { fg = c.bright_magenta, bold = true })

  -- Syntax
  set(0, "Comment", { fg = c.bright_black, italic = true })
  set(0, "Keyword", { fg = c.bright_blue })
  set(0, "Function", { fg = c.bright_magenta })
  set(0, "String", { fg = c.green })
  set(0, "Number", { fg = c.bright_yellow })
  set(0, "Boolean", { fg = c.bright_yellow })
  set(0, "Type", { fg = c.cyan })
  set(0, "Identifier", { fg = c.blue })

  -- UI Elements
  set(0, "StatusLine", { fg = c.fg, bg = c.black })
  set(0, "VertSplit", { fg = c.bright_black })
  set(0, "Pmenu", { fg = c.fg, bg = c.black })
  set(0, "PmenuSel", { fg = c.selection_fg, bg = c.selection_bg })

  -- Diagnostics (LSP)
  set(0, "DiagnosticError", { fg = c.bright_red })
  set(0, "DiagnosticWarn", { fg = c.yellow })
  set(0, "DiagnosticInfo", { fg = c.blue })
  set(0, "DiagnosticHint", { fg = c.green })

  -- Telescope
  set(0, "TelescopeBorder", { fg = c.bright_black })
  set(0, "TelescopeSelection", { bg = c.black })
end

function M.setup()
  M.apply()
end

return M