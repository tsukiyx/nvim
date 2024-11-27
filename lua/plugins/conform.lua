return {
	'stevearc/conform.nvim',
	config = function()
		require("conform").setup({
			format_on_save = {
				-- Estas opciones serán pasadas a conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				lua = { "stylua" },

				-- Python: isort y black
				python = { "isort", "black" },

				-- Rust: rustfmt, fallback a LSP
				rust = { "rustfmt", lsp_format = "fallback" },

				-- JavaScript: usa prettierd, luego prettier si no se encuentra el primero
				javascript = { "prettierd", "prettier", stop_after_first = true },

				-- TypeScript: prettierd y prettier
				typescript = { "prettierd", "prettier", stop_after_first = true },

				-- Vue: prettierd y prettier para el formateo de archivos Vue
				vue = { "prettierd", "prettier", "volar", stop_after_first = true },

				-- HTML: prettierd y prettier
				html = { "prettierd", "prettier", stop_after_first = true },

				-- CSS: prettier para CSS
				css = { "prettier" },
			},
		})
	end,
}
