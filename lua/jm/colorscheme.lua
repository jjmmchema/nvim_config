
local colorscheme = "tokyonight"

local status_ok, cs = pcall(require, colorscheme)
if not status_ok then
  return
end

cs.setup {
    -- disable italic
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = {},
    variables = {},
  },
}

vim.cmd("colorscheme " .. colorscheme)

