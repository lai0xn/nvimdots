require("lai0xn")
-- Default options:
require("gruvbox").setup({
  palette_overrides = {
		bright_orange = "#ebdbb2"
	},
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard",
  dim_inactive = false,
  transparent_mode = false,
})

vim.g.gruvbox_baby_background_color = "dark"
--set line numbers
vim.cmd("set number")
-- enable ts
vim.cmd("colorscheme gruvbox")
vim.o.background = dark
