return {
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUpdate" },
        opts = function()
            return require("plugins.configs.mason")
        end,
		config = function(_, opts)
			require("mason").setup(opts)
		end,
	},
}
