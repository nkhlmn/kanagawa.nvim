local M = {}
---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    config = config or require("kanagawa").config
    local theme = colors.theme
    return {
            -- ["@lsp.type.class"] = { link = "Structure" },
            -- ["@lsp.type.decorator"] = { link = "Function" },
            -- ["@lsp.type.enum"] = { link = "Structure" },
            -- ["@lsp.type.enumMember"] = { link = "Constant" },
            -- ["@lsp.type.function"] = { link = "Function" },
            -- ["@lsp.type.interface"] = { link = "Structure" },
            -- ["@lsp.type.macro"] = { link = "Macro" },
            ["@lsp.type.method"] = { link = "@method" }, -- Function
            ["@lsp.type.namespace"] = { link = "@namespace" }, -- Structure
            ["@lsp.type.parameter"] = { link = "@parameter" }, -- Identifier
            -- ["@lsp.type.property"] = { link = "Identifier" },
            -- ["@lsp.type.struct"] = { link = "Structure" },
            -- ["@lsp.type.type"] = { link = "Type" },
            -- ["@lsp.type.typeParameter"] = { link = "TypeDef" },
            ["@lsp.type.variable"] = { fg = 'none' }, -- Identifier


            ["@lsp.type.selfParameter"] = { link = "@variable.builtin" },
            -- ["@lsp.type.builtinConstant"] = { link = "@constant.builtin" },
            ["@lsp.type.builtinConstant"] = { link = "@constant.builtin" },
            ["@lsp.type.magicFunction"] = { link = "@function.builtin" },


            ["@lsp.mod.readonly"] = { link = "Constant" },
            ["@lsp.mod.typeHint"] = { link = "Structure" },
            -- ["@lsp.mod.defaultLibrary"] = { link = "Special" },
            -- ["@lsp.mod.builtin"] = { link = "Special" },


            ["@lsp.typemod.operator.controlFlow"] = { link = "@exception" },
            ["@lsp.typemod.keyword.documentation"] = { link = "Special"},

            ["@lsp.typemod.variable.global"] = { link = "Constant" },
            ["@lsp.typemod.variable.static"] = { link = "Constant" },
            ["@lsp.typemod.variable.defaultLibrary"] = { link = "Special" },

            ["@lsp.typemod.function.builtin"] = { link = "@Function.builtin"},
            ["@lsp.typemod.function.defaultLibrary"] = { link = "@Function.builtin"},
            ["@lsp.typemod.method.defaultLibrary"] = { link = "@Function.builtin"},

            ["@lsp.typemod.operator.injected"] = { link = "@operator" },
            ["@lsp.typemod.string.injected"] = { link = "@string" },
            ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    }
end

return M
--vim: fdm=marker
