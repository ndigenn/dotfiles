
function ColorMyPencils(color)
	-- color = color or "rose-pine"
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	--if you want all transparent set up

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NonText", { bg = "none" })

	-- vim.api.nvim_set_hl(0, "WarningMsg", { bg = "none" })

	-- vim.api.nvim_set_hl(0, "ErrorMsg", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "Whitespace", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

end

ColorMyPencils()
