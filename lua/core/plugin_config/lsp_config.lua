local servers = { "html", "lua_ls", "jdtls", "clangd", "rust_analyzer", "pylsp" }

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = servers
})

local on_attach = function(_, _)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
local std = {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = lspconfig.util.root_pattern('.git', 'CMakeLists.txt'),
}

lspconfig["clangd"].setup(vim.tbl_deep_extend("force", std, {
  cmd = { "clangd", "--compile-commands-dir=build" }
}))
lspconfig["lua_ls"].setup(std)
lspconfig["rust_analyzer"].setup(std)
lspconfig["jdtls"].setup(std)
lspconfig["pylsp"].setup(std)
lspconfig["html"].setup(std)

