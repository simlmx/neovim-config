return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- Python
        pyright = {},
        -- Typescript
        vtsls = {
          keys = (function()
            local function goto_source_definition()
              local params = vim.lsp.util.make_position_params()
              LazyVim.lsp.execute({
                command = "typescript.goToSourceDefinition",
                arguments = { params.textDocument.uri, params.position },
                open = true,
              })
            end
            return {
              { "gd", goto_source_definition, desc = "Goto Source Definition" },
              { "gD", goto_source_definition, desc = "Goto Source Definition" },
            }
          end)(),
          settings = {
            typescript = {
              inlayHints = {
                enumMemberValues = { enabled = true },
                functionLikeReturnTypes = { enabled = false },
                parameterNames = { enabled = false },
                parameterTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = true },
                variableTypes = { enabled = false },
              },
            },
          },
        },
      },
      diagnostics = {
        virtual_text = false,
      },
    },
  },
}
