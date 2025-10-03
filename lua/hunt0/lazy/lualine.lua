return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            sections = {
                lualine_a = {
                    {
                        'filename',
                        path = 1
                    }
                },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { { 'progress' } },
                lualine_z = { { 'location' } },
            },
            inactive_sections = {
                lualine_a = {
                    {
                        'filename',
                        path = 1
                    }
                },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { { 'progress' } },
                lualine_z = { { 'location' } },
            }
        }
    end
}
