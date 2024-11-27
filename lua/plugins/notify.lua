return {
	"rcarriga/nvim-notify",

	config = function()
		local notify = require("notify")
		vim.notify = notify

		notify("Welcome Back!")
		-- Función para mostrar solo el nombre del archivo
		local function show_save_notification()
			local file_name = vim.fn.fnamemodify(vim.fn.expand("%"), ":t") -- :t toma solo el nombre del archivo
			notify("Archivo guardado: " .. file_name)
		end

		-- Llamada a la función de notificación personalizada al guardar
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = "*",
			callback = show_save_notification,
		})

		require("transparent").clear_prefix("Notify")
	end,
}
