return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"html",
					"jsonls",
					"ts_ls",
					"gopls",
					"cssls",
					"terraformls",
					"clangd",
				},
			})
		end,
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			local servers = {
				ts_ls = {},
				html = {},
				lua_ls = {},
				jsonls = {},
				cssls = {},
				terraformls = {},
				groovyls = {},
				gopls = {
					cmd = { "gopls" },
					filetypes = { "go", "gomod", "gowork", "gotmpl" },
					root_dir = vim.fs.root(0, { "go.mod", "go.work", ".git" }),
				},
				clangd = {
					cmd = { "clangd", "--fallback-style=webkit" },
				},
			}

			for name, cfg in pairs(servers) do
				cfg.capabilities = capabilities
				vim.lsp.config(name, cfg)
			end
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
