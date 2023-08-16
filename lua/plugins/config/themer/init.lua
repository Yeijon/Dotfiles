local colors = require("themer.modules.core.api").get_cp(SCHEME)
local utils = require("plugins.config.themer.utils")
local darken = require("themer.utils.colors").darken

colors.bg.lighter = utils.adjust_color(colors.bg.base, 5)
colors.bg.darker = darken(colors.bg.base, 0.9, "#000000")
colors.alpha = utils.adjust_color(colors.blue, -50)

require("themer").setup({
  colorscheme = SCHEME,
  styles = {
      comment = { style = "italic" },
      ["function"] = { style = "bold" },
  },
  remaps = {
    highlights = {
      globals = {
        themer = {
          ThemerBorder = { fg = colors.bg.darker, bg = colors.bg.darker },
          ThemerNormalFloat = { bg = colors.bg.darker },
          ThemerSelected = { bg = darken(colors.bg.base, 0.8, colors.magenta) },
      },
        base = {
            Alpha = { fg = colors.alpha, bg = colors.bg.base },
            Folded = { fg = utils.adjust_color(colors.fg, -80), bg = colors.bg.lighter },
            FoldColumn = { fg = colors.blue, bg = colors.bg.base },
            LineNr = { fg = colors.blue, bg = colors.bg.base },
            LineNrAbove = { fg = utils.adjust_color(colors.bg.base, 50) },
            LineNrBelow = { fg = utils.adjust_color(colors.bg.base, 50) },
            MatchParen = { fg = colors.diagnostic.warn, bg = "None", style = "underline" },
            TabLineFill = { fg = colors.bg.lighter, bg = colors.bg.lighter },
            SpellBad = { fg = "#ee6d85", bg = "black", style = "bold" },
            SpellCap = { fg = colors.green, bg = "black", style = "bold" },
            SpellLocal = { fg = colors.blue, bg = "black", style = "bold" },
            SpellRare = { fg = colors.magenta, bg = "black", style = "bold" },
            VertSplit = { fg = colors.bg.lighter, bg = "None", style = "None" },
            StatusLine = { link = "VertSplit", style = "None" },
            StatusLineNC = { link = "VertSplit", style = "None" },
            NormalFloat = { bg = colors.bg.darker },
            FloatBorder = { link = "ThemerBorder" },
            PmenuSel = { bg = colors.syntax.comment or colors.dimmed.subtle },
            Comment = { fg = utils.adjust_color(colors.bg.base, 60) },
        },
        plugins = {
          neotree = {
            NeoTreeRootName = { link = "ThemerMatch" },
            NeoTreeDirectoryName = { link = "ThemerMatch" },
            NeoTreeNormal = { bg = colors.bg.darker },
            NeoTreeNormalNC = { bg = colors.bg.darker },
          },
        }
      },
    },
  },
})
      
    
          
    
