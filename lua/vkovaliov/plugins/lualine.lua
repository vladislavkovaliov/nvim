local setup, lualine = pcall(require, "lualine")
if not setup then
  return
end

local lualine_nightfly = require("lualine.themes.nightfly")
local new_colors = {
  blue = "#93CAED",
  green = "#ACD1AF",
  violet = "#AF8FE9",
  yellow = "#FDFD96",
  black = "#252525"
}

lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black,
  },
}

lualine.setup({
  options = {
    theme = lualine_nightfly
  }
})
