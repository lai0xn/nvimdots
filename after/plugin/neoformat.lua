-- Define an augroup for formatting
vim.api.nvim_create_augroup("fmt", { clear = true })
vim.g.neoformat_enabled_go = {'gofmt'}
vim.g.neoformat_enabled_dart = {'dartfmt'}
-- Create an autocommand to format files on save
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "fmt",
  pattern = "*",
  callback = function()
    -- Call Neoformat before saving the file
    vim.cmd("Neoformat")
  end,
})

