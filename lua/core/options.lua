local g = vim.g
local o = vim.o
local opt = vim.opt

o.mouse = 'a'
o.ignorecase = true
o.smartcase = true
o.spelllang = 'en_gb'

g.mapleader = ' ' --custom leader
g.maplocalleader = ',' --Local leader used for neorg

-- UI
o.number = true
o.wrap = false
o.linebreak = true
o.showbreak = '>'
o.scrolloff = 8
o.signcolumn = 'yes'
o.splitright = true
o.splitbelow = true
o.list = true -- Show tab, space and new line chars
o.laststatus = 3 -- Global statusline
opt.completeopt = { 'menu', 'menuone', 'noselect', 'preview' }
opt.fillchars = { eob = ' ' }
opt.listchars:append({
  trail = '·',
  tab = '  ',
})

-- Tabs, indent and folding
o.expandtab = true -- Use spaces instead of tabs
o.shiftwidth = 2 -- Shift 2 spaces when tab
o.tabstop = 2 -- 1 tab == 2 spaces
o.autoindent = true -- Autoindent new lines
o.foldenable = false -- Disable folding
o.breakindent = true -- Indent wrapped text

-- Performance
o.updatetime = 250 -- Trigger event wait time (ms)
o.timeoutlen = 600 -- Time to wait for mapped sequence (ms)
