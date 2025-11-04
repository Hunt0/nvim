return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            sections = {
                lualine_a = {
                    {
                        'filename',
                        path = 1,
                        color = { fg = '#000000' }
                    }
                },
                lualine_b = {},
                lualine_c = {
                    {
                        function()
                            local reg = vim.fn.reg_recording()
                            if reg == '' then
                                return ''
                            else
                                return 'Recording @' .. reg
                            end
                        end,
                        color = { fg = '#ff9e64', gui = 'bold' },
                    },
                },
                lualine_x = {},
                lualine_y = { { 'progress' } },
                lualine_z = {
                    {
                        'location',
                        color = { fg = '#000000' }
                    }
                },
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
