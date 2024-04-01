local set = vim.opt --short vim.opt in set variable

--  user options {
set.cursorline = true
set.number = true -- enable line number
set.relativenumber = true -- enable line number
set.confirm = true -- confirm on exit
set.smartindent = true -- autoindent new lines
set.ignorecase = true
set.scrolloff = 3 -- at  least 8 lines will appear  on the top and bottom of the screen
set.sidescrolloff = 5
set.updatetime = 300
set.splitright = true -- new vertical splits are created at right
set.splitbelow = true -- new horizontal splits are created bellow
set.numberwidth = 3 -- set 3 characters to number column
set.cmdheight = 1
set.cc = ''
set.showmode = false

-- }

-- system options {
set.signcolumn = 'yes'
set.autoread = true -- autoread files if it was changed
set.hidden = true -- enable the option of hide a buffer without save the file
set.clipboard = 'unnamedplus' -- enable clipboard support
set.termguicolors = true
set.undofile = true
set.mouse = 'n'
set.encoding = 'utf-8'
set.title = true
set.smarttab = true
set.smartcase = true
set.breakindent = true
set.formatoptions = 'l'
-- }

-- filetype {
set.filetype = 'on'
set.filetype = 'plugin'
set.filetype = 'indent'
-- }

-- fold {
set.foldmethod = 'indent' -- create folds by indent level
set.foldenable = false -- dont close folds whe open file
--}

--other {
-- set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.writebackup = false
set.swapfile = false
set.backup = false
-- }
