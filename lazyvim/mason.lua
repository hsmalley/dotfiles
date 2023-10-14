return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"ansible-language-server",
				"bash-language-server",
				-- "vim-language-server",
				-- lint and format
				"autopep8",
				"autoflake",
				"black",
				"codespell",
				"djlint",
				"prettierd",
				"jq",
				"mdformat",
				"markuplint",
				"shfmt",
				"shellcheck",
				"shellharden",
				"sqlfmt",
				"yamlfix",
				"yamlfmt",
				"yamllint",
				"yq",
			},
		},
	},
}
