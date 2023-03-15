require("tokyonight").setup({ 
    -- disable italic
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = {},
    variables = {},
  },
})

local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
