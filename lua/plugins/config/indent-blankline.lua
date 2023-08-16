
require("indent_blankline").setup({
  filetype_exclude = {"", "help", "yaml"},
  buftype_exclude = { "terminal", "quickfix" },

  char = '¦',
  space_char_blankline = " ",
  show_end_of_line = true,
  show_first_indent_level = false,
  show_trailing_blankline_indent = false,
  show_current_context = true,
  show_current_context_start = false,
  })
