local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
    defaults = {
        mappings = {
            ["n"] = {
                ["q"] = actions.close,
                ["d"] = fb_actions.remove,
                ["b"] = actions.select_tab,
                ["c"] = fb_actions.create,
            },
        },
    },
    pickers = {
        buffers = {
            previewer = false,
            mappings = {
                ["n"] = {
                    ["d"] = actions.delete_buffer
                }

            }
        }
    },
    extensions = {
        file_browser = {
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    ["<C-w>"] = function() vim.cmd('normal vbd') end,
                },
                ["n"] = {
                    ["h"] = fb_actions.goto_parent_dir,
                },
            },
        },
    },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<leader>f',
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)
vim.keymap.set('n', '<leader>r', function()
    builtin.live_grep()
end)
vim.keymap.set('n', '<leader>b', function()
    builtin.buffers()
end)
vim.keymap.set('n', '<leader>t', function()
    builtin.help_tags()
end)
-- don't know what is this
vim.keymap.set('n', ';;', function()
    builtin.resume()
end)
vim.keymap.set('n', '<leader>e', function()
    builtin.diagnostics()
end)
-- file tree
vim.keymap.set("n", "<leader>sf", function()
    telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        previewer = false,
        initial_mode = "normal",
        layout_config = { height = 40 }
    })
end)
