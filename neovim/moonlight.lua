-- Moonlight colorscheme for Neovim
-- Based on: https://github.com/atomiks/moonlight-vscode-theme

local colors = {
  bg = "#212337",
  bg_dark = "#191a2a",
  bg_highlight = "#2f334d",
  border = "#222436",
  fg = "#c8d3f5",
  comment = "#7a88cf",
  
  red = "#ff757f",
  orange = "#ff995e",
  yellow = "#ffc777",
  green = "#c3e88d",
  cyan = "#86e1fc",
  blue = "#82aaff",
  sky_blue = "#65bcff",
  purple = "#c099ff",
  pink = "#fca7ea",
  
  selection = "#444a73",
  gutter = "#3b4261",
}

local theme = {}

-- Editor
theme.Normal = { fg = colors.fg, bg = colors.bg }
theme.NormalFloat = { fg = colors.fg, bg = colors.bg_dark }
theme.CursorLine = { bg = colors.bg_highlight }
theme.CursorLineNr = { fg = colors.yellow }
theme.LineNr = { fg = colors.gutter }
theme.Visual = { bg = colors.selection }
theme.Search = { bg = colors.selection, fg = colors.yellow }
theme.IncSearch = { bg = colors.yellow, fg = colors.bg }

-- Syntax
theme.Comment = { fg = colors.comment, italic = true }
theme.Constant = { fg = colors.orange }
theme.String = { fg = colors.green }
theme.Character = { fg = colors.green }
theme.Number = { fg = colors.orange }
theme.Boolean = { fg = colors.orange }
theme.Float = { fg = colors.orange }

theme.Identifier = { fg = colors.fg }
theme.Function = { fg = colors.blue }

theme.Statement = { fg = colors.purple }
theme.Conditional = { fg = colors.purple }
theme.Repeat = { fg = colors.purple }
theme.Label = { fg = colors.purple }
theme.Operator = { fg = colors.purple }
theme.Keyword = { fg = colors.sky_blue }
theme.Exception = { fg = colors.purple }

theme.PreProc = { fg = colors.pink }
theme.Include = { fg = colors.purple }
theme.Define = { fg = colors.purple }
theme.Macro = { fg = colors.pink }
theme.PreCondit = { fg = colors.pink }

theme.Type = { fg = colors.sky_blue }
theme.StorageClass = { fg = colors.purple }
theme.Structure = { fg = colors.sky_blue }
theme.Typedef = { fg = colors.sky_blue }

theme.Special = { fg = colors.cyan }
theme.SpecialChar = { fg = colors.pink }
theme.Tag = { fg = colors.pink }
theme.Delimiter = { fg = colors.cyan }
theme.SpecialComment = { fg = colors.comment }
theme.Debug = { fg = colors.red }

-- Treesitter
theme["@variable"] = { fg = colors.fg }
theme["@variable.builtin"] = { fg = colors.yellow }
theme["@function"] = { fg = colors.blue }
theme["@function.builtin"] = { fg = colors.sky_blue }
theme["@function.method"] = { fg = colors.sky_blue }
theme["@keyword"] = { fg = colors.sky_blue }
theme["@keyword.operator"] = { fg = colors.purple }
theme["@string"] = { fg = colors.green }
theme["@property"] = { fg = colors.cyan }
theme["@parameter"] = { fg = colors.yellow }
theme["@constructor"] = { fg = colors.sky_blue }
theme["@tag"] = { fg = colors.pink }
theme["@tag.attribute"] = { fg = colors.yellow }

-- LSP
theme.DiagnosticError = { fg = colors.red }
theme.DiagnosticWarn = { fg = colors.yellow }
theme.DiagnosticInfo = { fg = colors.cyan }
theme.DiagnosticHint = { fg = colors.sky_blue }

-- Git
theme.DiffAdd = { fg = colors.green }
theme.DiffChange = { fg = colors.yellow }
theme.DiffDelete = { fg = colors.red }
theme.GitSignsAdd = { fg = colors.green }
theme.GitSignsChange = { fg = colors.yellow }
theme.GitSignsDelete = { fg = colors.red }

-- Apply theme
for group, settings in pairs(theme) do
  vim.api.nvim_set_hl(0, group, settings)
end

-- Set colorscheme name
vim.g.colors_name = "moonlight"
