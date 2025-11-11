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
                        color = function()
                            -- check current mode
                            if vim.fn.mode() == 'n' then
                                return { fg = '#ffcb83' }   -- Insert mode color
                            else
                                return { fg = '#262626' }   -- Default color for all other modes
                            end
                        end
                    }
                },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { { 'progress' } },
                lualine_z = {
                    {
                        'location',
                        color = function()
                            -- check current mode
                            if vim.fn.mode() == 'i' then
                                return { fg = '#ffcb83' }   -- Insert mode color
                            else
                                return { fg = '#262626' }   -- Default color for all other modes
                            end
                        end
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
