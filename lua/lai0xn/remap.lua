vim.g.mapleader = " "

vim.keymap.set("n", "<C-n>", function()
  vim.cmd("NvimTreeToggle")
end, { desc = "Toggle NvimTree" }) -- Closing the function properly

vim.keymap.set("n", "<leader>e", function()
  vim.cmd("Ntree")
end, { desc = "Toggle Neo-tree" })

