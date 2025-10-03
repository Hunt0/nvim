return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            sections = {
                lualine_a = {
                    {
                        'buffers',
                        show_filename_only = true,
                    }
                },
                lualine_c = {
                    {
                        'filename',
                        path = 1
                    }
                }
            }
        }
    end
}
