local theme = require("kanagawa.colors").setup().theme

local kanagawa = {}

kanagawa.normal = {
  a = { bg = theme.crystalBlue, fg = theme.bg_dark },
  b = { bg = theme.winterBlue, fg = theme.crystalBlue },
  c = { bg = theme.bg_light0, fg = theme.fg },
}

kanagawa.insert = {
  a = { bg = theme.diag.ok, fg = theme.ui.bg },
  b = { bg = theme.ui.bg, fg = theme.diag.ok },
}

kanagawa.command = {
  a = { bg = theme.vcs.removed, fg = theme.ui.bg },
  b = { bg = theme.ui.bg, fg = theme.vcs.removed },
}

kanagawa.visual = {
  a = { bg = theme.syn.fun, fg = theme.ui.bg },
  b = { bg = theme.ui.bg, fg = theme.syn.fun },
}

kanagawa.replace = {
  a = { bg = theme.syn.constant, fg = theme.ui.bg },
  b = { bg = theme.ui.bg, fg = theme.syn.constant },
}

kanagawa.inactive = {
  a = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
  b = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim, gui = "bold" },
  c = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
}

if vim.g.kanagawa_lualine_bold then
  for _, mode in pairs(kanagawa) do
    mode.a.gui = "bold"
  end
end

return kanagawa
