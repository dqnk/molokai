local molokai = {}
function molokai.setup()
	vim.g.colors_name = "molokai"
	local colors = {
		bg = "#1B1D1E",
		darker_bg = "#080808",
		red = "#F92672",
		green = "#A6E22E",
		bright_green = "#2BFF2B",
		bright_red = "#FF2B2B",
		yellow = "#E6DB74",
		blue = "#66D9EF",
		purple = "#AE81FF",
		orange = "#FD971F",
		light_orange = "#FFB733",
		white = "#FFFFFF",
		black = "#000000",
		gray = "#808080",
		dark_gray = "#465457",
		light_gray = "#7E8E91",
		dirty_yellow = "#FFE792",
		boring_gray = "#4C4745",
		pale_red = "#EF5939",
		red_gray = "#DFCFCF",
	}
	local highlights = {
		-- Treesitter highlights
		{ "@annotation", { fg = colors.blue } },
		{ "@attribute", { fg = colors.green } },
		{ "@boolean", { fg = colors.purple } },
		{ "@character", { fg = colors.yellow } },
		{ "@comment", { fg = colors.light_gray, italic = true } },
		{ "@conditional", { fg = colors.red, bold = true } },
		{ "@constant.builtin", { fg = colors.orange, bold = true } },
		{ "@constant", { fg = colors.purple } },
		{ "@constructor", { fg = colors.blue } },
		{ "@error", { fg = colors.red, bg = colors.bg, bold = true } },
		{ "@exception", { fg = colors.red, bold = true } },
		{ "@field", { fg = colors.orange } },
		{ "@float", { fg = colors.purple } },
		{ "@function", { fg = colors.green } },
		{ "@include", { fg = colors.blue, italic = true } },
		{ "@keyword", { fg = colors.red, bold = true } },
		{ "@keyword.modifier", { link = "@keyword" } },
		{ "@label", { fg = colors.yellow } },
		{ "@method", { fg = colors.green } },
		{ "@module", { fg = colors.orange } },
		{ "@namespace", { fg = colors.blue, italic = true } },
		{ "@number", { fg = colors.purple } },
		{ "@operator", { fg = colors.red } },
		{ "@parameter", { fg = colors.orange } },
		{ "@property", { fg = colors.orange } },
		{ "@punctuation.bracket", { fg = colors.gray } },
		{ "@punctuation.delimiter", { fg = colors.light_gray } },
		{ "@punctuation.special", { fg = colors.white } },
		{ "@string", { fg = colors.yellow } },
		{ "@string.escape", { fg = colors.red } },
		{ "@string.special", { fg = colors.blue } },
		{ "@symbol", { fg = colors.purple } },
		{ "@tag", { fg = colors.red } },
		{ "@tag.delimiter", { fg = colors.gray } },
		{ "@text", { fg = colors.white } },
		{ "@text.title", { fg = colors.green, bold = true } },
		{ "@text.literal", { fg = colors.yellow, italic = true } },
		{ "@type", { fg = colors.blue } },
		{ "@lsp.type", { link = "@keyword" } },
		--{ "@lsp.type.modifier", { link = "@keyword" } },
		{ "@type.definition", { fg = colors.orange } },
		{ "@variable", { fg = colors.orange } },
		{ "@variable.builtin", { fg = colors.orange } },
		-- Diagnostic
		{ "DiagnosticError", { fg = colors.red } },
		{ "DiagnosticWarn", { fg = colors.yellow } },
		{ "DiagnosticInfo", { fg = colors.blue } },
		{ "DiagnosticHint", { fg = colors.green } },
		-- Markup
		{ "@markup", { link = "@text" } },
		{ "@markup.heading", { fg = colors.pale_red } },
		{ "@markup.raw", { link = "@comment" } },
		{ "@markup.link", { fg = colors.orange } },
		{ "@markup.link.url", { fg = "#808080", underline = true } },
		{ "@markup.link.label", { link = "@string.escape" } },
		{ "@markup.list", { link = "@punctuation.delimiter" } },
		-- Diff
		{ "@diff.plus", { fg = colors.bright_green, ctermfg = 46 } },
		{ "@diff.minus", { fg = colors.bright_red, ctermfg = 196 } },
		{ "@diff.delta", { fg = "white", bg = colors.boring_gray, ctermfg = 255, ctermbg = 239 } },
		{ "@diff.add", { fg = colors.bright_green, ctermfg = 46 } },
		{ "@diff.delete", { fg = colors.bright_red, ctermfg = 196 } },
		{ "@diff.change", { fg = "white", bg = colors.boring_gray, ctermfg = 255, ctermbg = 239 } },
		{ "@difftext.add", { fg = "black", bg = colors.bright_red, ctermfg = 0, ctermbg = 46 } },
		{ "@difftext.change", { fg = "white", bg = colors.boring_gray, ctermfg = 255, ctermbg = 239 } },
		{ "@difftext.delete", { fg = "white", bg = colors.bright_red, ctermfg = 255, ctermbg = 196 } },
		{ "@difftext.modified", { fg = "#000000", bg = colors.light_orange, ctermfg = 0, ctermbg = 214 } },
		{ "Directory", { fg = colors.green, bold = true } },

		-- random
		{ "Function", { fg = colors.green } },
		{ "Identifier", { fg = colors.orange } },
		{ "Variable", { fg = colors.orange } },
		{ "LspInlayHint", { fg = colors.red_gray } },
		{ "Builtin", { fg = "#FFD180" } },
		{ "Ignore", { fg = "#808080", bg = colors.bg } },
		{ "Keyword", { fg = "#F92672", bold = true } },
		{ "Label", { fg = "#E6DB74" } },
		{ "Macro", { fg = "#C4BE89", italic = true } },
		--{ "SpecialKey", { fg = "#66D9EF", italic = true } },
		{ "MatchParen", { fg = "#000000", bg = "#FD971F", ctermfg = 000, ctermbg = 208 } },
		{ "ModeMsg", { fg = "#E6DB74" } },
		{ "MoreMsg", { fg = "#E6DB74" } },
		{ "Operator", { fg = "#F92672" } },
		{ "Pmenu", { fg = "white", bg = "#000000", ctermfg = 255, ctermbg = 16 } },
		{ "PmenuSel", { fg = "white", bg = "#0a9dff", ctermfg = 255, ctermbg = 242 } },
		{ "PmenuSbar", { bg = "#857f78", ctermbg = 232 } },
		{ "PmenuThumb", { fg = "#242321", ctermfg = 81 } },
	}
	for _, highlight in ipairs(highlights) do
		local group, props = highlight[1], highlight[2]
		vim.api.nvim_set_hl(0, group, props)
	end
end
return molokai
