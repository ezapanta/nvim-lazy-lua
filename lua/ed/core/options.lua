local opt = vim.opt -- for conciseness

-- line numbers
-- opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- clipboard
-- Mac
-- opt.clipboard("unnamedplus")
-- Windows
-- opt.clipboard:append("unnamed")
-- Ubuntu on Windows Terminal/WSL
vim.g.clipboard = {
	name = "WslClipboard",
	copy = {
		["+"] = "clip.exe",
		["*"] = "clip.exe",
	},
	paste = {
		["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
	},
	-- copy = {
	-- 	["+"] = { "xclip", "-quiet", "-i", "-selection", "clipboard" },
	-- 	["*"] = { "xclip", "-quiet", "-i", "-selection", "primary" },
	-- },
	-- paste = {
	-- 	["+"] = { "xclip", "-quiet", "-i", "-selection", "clipboard" },
	-- 	["*"] = { "xclip", "-quiet", "-i", "-selection", "primary" },
	-- },
	cache_enabled = 1, -- must be done or else it hangs
}
