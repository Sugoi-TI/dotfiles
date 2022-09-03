vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use "wbthomason/packer.nvim"
    use "folke/tokyonight.nvim"
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- LSP
    use 'neovim/nvim-lspconfig'
    -- use 'williamboman/nvim-lsp-installer'
    use 'onsails/lspkind.nvim' -- vscode-like pictograms
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use 'L3MON4D3/LuaSnip'

    -- Threesitter
    use "nvim-treesitter/nvim-treesitter"
    use "windwp/nvim-ts-autotag"
    use "windwp/nvim-autopairs"

    -- Telescope
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"

    use "akinsho/nvim-bufferline.lua"
    use "lewis6991/gitsigns.nvim"
    use "folke/which-key.nvim"
end)
