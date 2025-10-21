return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "onedark",
			},
			sections = {
				lualine_a = {
					{
						"filename",
						path = 1,
					},
				},
                lualine_x = {
                    'fileformat',
                    'filetype',
                },
			},
		})
	end,
}
