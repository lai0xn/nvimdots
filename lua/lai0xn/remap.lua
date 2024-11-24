vim.g.mapleader = " "
vim.keymap.set("n", "<C-n>", function()
  vim.cmd("Neotree toggle")
end, { desc = "Toggle Neo-tree" })

