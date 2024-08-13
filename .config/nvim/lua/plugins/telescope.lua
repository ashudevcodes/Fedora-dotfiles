return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
        cmd = "Telescope",
        init = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        end,
        opts = function()
            return {
                defaults = {
                    vimgrep_arguments = {
                        "rg",
                        "-L",
                        "--color=never",
                        "--no-heading",
                        "--with-filename",
                        "--line-number",
                        "--column",
                        "--smart-case",
                    },
                    previewer = true,
                    file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
                    grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
                    qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,
                },
            }
        end,
        config = function(_, opts)
            local telescope = require "telescope"
            telescope.setup(opts)
        end,
    },
}
