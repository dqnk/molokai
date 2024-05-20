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
		dirty_white = "#F8F8F2",
		light_gray = "#ABABAB",
		black = "#000000",
		gray = "#808080",
		dark_gray = "#465457",
		dirty_yellow = "#FFE792",
		pale_red = "#EF5939",
	}
	local highlights = {
		-- Treesitter highlights
		{ "@annotation", { fg = colors.blue } },
		{ "@attribute", { fg = colors.green } },
		{ "@boolean", { fg = colors.purple } },
		{ "@character", { fg = colors.yellow } },
		{ "@comment", { fg = colors.gray, italic = true } },
		{ "@conditional", { fg = colors.red, bold = true } },
		{ "@constant.builtin", { fg = colors.orange, bold = true } },
		{ "@constant", { fg = colors.purple, bold = true } },
		{ "@constructor", { fg = colors.blue } },
		{ "@error", { fg = colors.red, bg = colors.bg, bold = true } },
		{ "@exception", { fg = colors.red, bold = true } },
		{ "@field", { fg = colors.orange } },
		{ "@float", { fg = colors.purple } },
		{ "@function", { fg = colors.green } },
		{ "@include", { fg = colors.blue, italic = true } },
		{ "@keyword", { fg = colors.red, bold = true } },
		--{ "@keyword.modifier", { link = "@keyword" } },
		{ "@label", { fg = colors.yellow } },
		{ "@method", { fg = colors.green } },
		{ "@module", { fg = colors.orange } },
		{ "@namespace", { fg = colors.blue, italic = true } },
		{ "@number", { fg = colors.purple } },
		{ "@operator", { fg = colors.red } },
		{ "@parameter", { fg = colors.orange } },
		{ "@property", { fg = colors.orange } },
		{ "@punctuation.bracket", { fg = colors.gray } },
		{ "@punctuation.delimiter", { fg = colors.gray } },
		{ "@punctuation.special", { fg = colors.blue } },
		{ "@string", { fg = colors.yellow } },
		{ "@string.escape", { fg = colors.red } },
		{ "@string.special", { fg = colors.blue } },
		{ "@symbol", { fg = colors.purple } },
		{ "@tag", { fg = colors.red } },
		{ "@tag.delimiter", { fg = colors.gray } },
		{ "@text", { fg = colors.white } },
		{ "@text.title", { fg = colors.green, bold = true } },
		{ "@text.literal", { fg = colors.yellow, italic = true } },
		{ "@type", { fg = colors.green } },
		{ "@type.definition", { fg = colors.orange } },
		{ "@lsp.type.modifier", { link = "@keyword" } },
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
		{ "@diff.delta", { fg = colors.white, bg = colors.dark_gray, ctermfg = 255, ctermbg = 239 } },
		{ "@diff.add", { fg = colors.bright_green, ctermfg = 46 } },
		{ "@diff.delete", { fg = colors.bright_red, ctermfg = 196 } },
		{ "@diff.change", { fg = colors.white, bg = colors.dark_gray, ctermfg = 255, ctermbg = 239 } },
		{ "@difftext.add", { fg = "black", bg = colors.bright_red, ctermfg = 0, ctermbg = 46 } },
		{ "@difftext.change", { fg = colors.white, bg = colors.dark_gray, ctermfg = 255, ctermbg = 239 } },
		{ "@difftext.delete", { fg = colors.white, bg = colors.bright_red, ctermfg = 255, ctermbg = 196 } },
		{ "@difftext.modified", { fg = colors.black, bg = colors.light_orange, ctermfg = 0, ctermbg = 214 } },
		{ "Directory", { fg = colors.green, bold = true } },
		{ "SignifySignAdd", { link = "@diff.add" } },
		{ "SignifySignDelete", { link = "@diff.delete" } },
		{ "SignifySignChange", { link = "@diff.change" } },

		-- random
		{ "Function", { fg = colors.green } },
		{ "Identifier", { fg = colors.orange } },
		{ "Variable", { fg = colors.orange } },
		{ "LspInlayHint", { fg = colors.light_gray } },
		{ "Builtin", { fg = "#FFD180" } },
		{ "Ignore", { fg = "#808080", bg = colors.bg } },
		{ "Keyword", { fg = colors.red, bold = true } },
		{ "Label", { fg = colors.yellow } },
		{ "Macro", { fg = "#C4BE89", italic = true } },
		{ "MatchParen", { fg = colors.black, bg = "#FD971F", ctermfg = 000, ctermbg = 208 } },
		{ "ModeMsg", { fg = colors.yellow } },
		{ "MoreMsg", { fg = colors.yellow } },
		{ "Operator", { fg = colors.red } },
		{ "Pmenu", { fg = colors.white, bg = colors.black, ctermfg = 255, ctermbg = 16 } },
		{ "PmenuSel", { fg = colors.white, bg = colors.blue, ctermfg = 255, ctermbg = 242 } },
		{ "PmenuSbar", { bg = "#857f78", ctermbg = 232 } },
		{ "PmenuThumb", { fg = "#242321", ctermfg = 81 } },
		{ "PreCondit", { fg = colors.green, bold = true } },
		{ "PreProc", { fg = colors.green } },
		{ "Question", { fg = colors.blue } },
		{ "Repeat", { fg = colors.red, bold = true } },
		{ "QuickFixLine", { fg = "NONE", bg = colors.red, ctermbg = 197 } },
		{ "Search", { fg = colors.black, bg = colors.dirty_yellow, ctermfg = 0, ctermbg = 222 } },
		{ "IncSearch", { fg = "#C4BE89", bg = colors.black, ctermfg = 193, ctermbg = 16 } },
		{ "LineNr", { fg = colors.light_gray } },
		{ "Constant", { link = "@constant" } },
		{ "Statement", { link = "@keyword" } },
		{ "Normal", { fg = colors.dirty_white, bg = colors.bg } },
		{ "ColorColumn", { bg = colors.bg } },
	}
	for _, highlight in ipairs(highlights) do
		local group, props = highlight[1], highlight[2]
		vim.api.nvim_set_hl(0, group, props)
	end
end
return molokai
