return {
    {
	"mason-org/mason.nvim",
	opts = {}
    },
    {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
	    "mason-org/mason.nvim",
	    "neovim/nvim-lspconfig",
	    "hrsh7th/cmp-nvim-lsp",
	},
	config = function()
	    local lspconfig = require("lspconfig")
	    local mason_lspconfig = require("mason-lspconfig")
	    local capabilities = require('cmp_nvim_lsp').default_capabilities()
	    mason_lspconfig.setup({
		ensure_installed = {
		    "html", "cssls", "ts_ls", "jdtls", 
		    "intelephense", "jsonls", "yamlls", "pyright"
		},
		handlers = {
		    function(server_name)
			lspconfig[server_name].setup({
			    capabilities = capabilities,
			})
		    end,
		}
	    })

	    vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(args)
		    local opts = { buffer = args.buf }
		    vim.keymap.set("n", "gd", vim.lsp.buf.definition,
		    { buffer = args.buf, desc = "Idź do definicji" })
		    vim.keymap.set("n", "K", vim.lsp.buf.hover,
		    { buffer = args.buf, desc = "Dokumentacja pod kursorem" })
		    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action,
		    { buffer = args.buf, desc = "Akcje kodu (LSP)" })
		    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float,
		    { buffer = args.buf, desc = "Pokaż błąd (Diagnostyka)" })
		end,
	    })
	end
    },
    {
	"neovim/nvim-lspconfig",
    }
}
