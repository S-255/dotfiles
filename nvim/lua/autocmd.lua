-- packer compile
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = {"plugins.lua"},
    command = "PackerCompile",
})
