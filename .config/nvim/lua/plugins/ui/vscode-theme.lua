vim.o.background = 'dark'
vim.o.background = 'light'
local c = require('vscode.colors').get_colors()

require('vscode').setup({
  -- Alternatively set style in setup
  style = 'dark',

  -- Enable transparent background
  transparent = true,
  terminal_colors = true,

  -- Enable italic comment
  italic_comments = true,

  -- Underline `@markup.link.*` variants
  underline_links = true,

  -- Disable nvim-tree background color
  disable_nvimtree_bg = true,

  -- Override colors (see ./lua/vscode/colors.lua)
  color_overrides = {
    -- vscLineNumber = '#606c70',
  },

  -- Override highlight groups (see ./lua/vscode/theme.lua)
  group_overrides = {
    -- this supports the same val table as vim.api.nvim_set_hl
    -- use colors from this colorscheme by requiring vscode.colors!
    -- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
  },
})
-- require('vscode').load()

-- load the theme without affecting devicon colors.
vim.cmd.colorscheme('vscode')
