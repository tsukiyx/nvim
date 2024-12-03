return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require('telescope').setup {
				defaults = {
					layout_config = {
						width = 0.9, -- Ancho total como porcentaje de la ventana
						preview_width = 0.6, -- Proporción para el área de previsualización
						prompt_position = "bottom", -- Ubicación del prompt (opcional)
						preview_cutoff = 0,
					},
					layout_strategy = "horizontal", -- O "vertical" si prefieres otro diseño
				},
			}
		end
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
			require("transparent").clear_prefix("Telescope")
		end,
	},
}
