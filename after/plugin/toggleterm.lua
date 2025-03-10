require("toggleterm").setup({
  open_mapping = [[<C-\>]], -- Default keybinding to toggle the terminal
  hide_numbers = true, -- Hide line numbers in the terminal
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true, -- Use terminal mappings in insert mode
  terminal_mappings = true, -- Use terminal mappings in normal mode
  persist_size = true,
  direction = "float", -- Default direction; overridden in keybindings
  close_on_exit = true, -- Close terminal when the process exits
  shell = vim.o.shell, -- Use the default shell
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

-- Define custom keybindings for horizontal and vertical terminals
local Terminal = require("toggleterm.terminal").Terminal

local horizontal = Terminal:new({ direction = "horizontal",size=10 })
local vertical = Terminal:new({ direction = "vertical" ,size=60})

-- Map keys for the custom terminals
vim.keymap.set("n", "<leader>h", function()
  horizontal:toggle()
end, { desc = "Toggle horizontal terminal" })

vim.keymap.set("n", "<leader>v", function()
  vim.cmd("ToggleTerm size=80 direction=vertical")
end, { desc = "Toggle vertical terminal" })

