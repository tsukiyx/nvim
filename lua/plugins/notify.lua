return {
	"rcarriga/nvim-notify",

	config = function()
		-- Verificar si el módulo notify está disponible
		local ok, notify = pcall(require, "notify")
		if not ok then
			vim.notify("nvim-notify no está instalado.", vim.log.levels.ERROR)
			return
		end

		-- Configurar vim.notify para usar nvim-notify
		vim.notify = notify

		-- Configuración global de nvim-notify
		notify.setup({
			timeout = 2000, -- Tiempo de espera de 2000 ms
		})

		-- Mensaje de bienvenida
		notify("Welcome Back!", "info")

		-- Función para mostrar solo el nombre del archivo
		local function show_save_notification()
			local file_name = vim.fn.fnamemodify(vim.fn.expand("%"), ":t") -- :t toma solo el nombre del archivo
			notify("Archivo guardado: " .. file_name, "info")
		end

		-- Llamada a la función de notificación personalizada al guardar
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = "*",
			callback = show_save_notification,
		})

		-- Verificar si el módulo transparent está disponible
		local transparent_ok, transparent = pcall(require, "transparent")
		if transparent_ok then
			transparent.clear_prefix("Notify")
		end
	end,
}
