require("lualine").setup({
    options = {
        theme = "tokyonight",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" }
    },
    sections = {
        lualine_c = { "filename" },
        lualine_x = { "filetype" }
    }
})

