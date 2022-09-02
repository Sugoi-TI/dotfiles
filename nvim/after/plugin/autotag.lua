local status, autotag = pcall(require, "nvim-ts-autotag")
if (not status) then return end

autotag.setup {
    autotag = {
        enable = true,
        filetype = {
            "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "tsx", "jsx", "rescirpt",
            "markdown"
        }
    }
}
