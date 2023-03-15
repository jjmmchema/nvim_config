local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "jm.lsp.mason"
require("jm.lsp.handlers").setup()
require "jm.lsp.null-ls"
