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
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				vue = { "prettierd", "prettier", "volar", stop_after_first = true },
				html = { "prettierd", "prettier", stop_after_first = true },
				css = { "prettier" },
				typescriptreact = { "prettier" },
				javascriptreact = { "prettier" }
			},
		})
	end,
}
