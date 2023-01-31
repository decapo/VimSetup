require'nvim-treesitter.configs'.setup {
	ensure_installed = { "rust", "python", "javascript", "typescript", "java", "c", "lua", "vim", "help" },

	sync_install = false,

	auto_install = true,

	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
		-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
		-- the name of the parser)
		-- list of language that will be disabled
		additional_vim_regex_highlighting = false,
	},
}
