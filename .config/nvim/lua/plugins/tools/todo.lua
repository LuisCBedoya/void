require('todo-comments').setup({
  signs = true,
  sign_priority = 8,
  keywords = {
    TODO = { icon = ' ', color = 'info' },
    FIX = {
      icon = ' ',
      color = 'error',
      alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' },
      -- signs = false, -- configure signs for some keywords individually
    },
    NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
    DEMO = { icon = ' ', alt = { 'SHOW' } },
    PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
    HACK = { icon = ' ', color = 'warning' },
    TEST = { icon = 'ﭧ', color = 'test', alt = { 'TESTING', 'UNITTEST', 'UNIT' } },
    UPDATE = { icon = ' ', color = 'hint', alt = { 'MIGRATE' } },
  },
  gui_style = {
    fg = 'NONE', -- The gui style to use for the fg highlight group.
    bg = 'BOLD', -- The gui style to use for the bg highlight group.
  },
  merge_keywords = true,
  highlight = {
    before = '',
    keyword = 'wide',
    after = 'fg',
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true,
    max_line_len = 2500,
    exclude = {
      'TelescopeResults',
      'query',
      'tsplayground',
      'lazy',
      'lsp-installer',
      'markdown',
      'mason',
      'txt',
      'dashboard',
      'alpha',
      'NvimTree',
      'undotree',
      'diff',
      'fugitive',
      'fugitiveblame',
      'Outline',
      'SidebarNvim',
      'packer',
      'lsp-installer',
      'TelescopePrompt',
      'help',
      'telescope',
      'lspinfo',
      'Trouble',
      'null-ls-info',
      'quickfix',
      'chadtree',
      'fzf',
      'NeogitStatus',
      'terminal',
      'console',
      'term://*',
      'Term://*',
      'toggleterm',
      'qf',
      'prompt',
      'noice',
      '',
    },
  },
  colors = {
    error = { 'DiagnosticError', 'ErrorMsg', '#ea7676' },
    warning = { 'DiagnosticWarn', 'WarningMsg', '#eac276' },
    info = { 'DiagnosticInfo', '#017bcd' },
    hint = { 'DiagnosticHint', '#017bcd' },
    default = { 'Identifier', '#7C3AED' },
    test = { 'Identifier', '#FF00FF' },
  },
  search = {
    command = 'rg',
    args = {
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
    },
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
  },
})
