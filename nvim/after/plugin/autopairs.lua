require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

--local handlers = require('nvim-autopairs.completion.handlers')

--cmp.event:on(
--  'confirm_done',
--  cmp_autopairs.on_confirm_done({
--    filetypes = {
--      -- "*" is a alias to all filetypes
--      ["*"] = {
--        ["("] = {
--          kind = {
--            cmp.lsp.CompletionItemKind.Function,
--            cmp.lsp.CompletionItemKind.Method,
--          },
--          handler = handlers["*"]
--        }
--      },
--      lua = {
--        ["("] = {
--          kind = {
--            cmp.lsp.CompletionItemKind.Function,
--            cmp.lsp.CompletionItemKind.Method
--          },
--          ---@param char string
--          ---@param item table item completion
--          ---@param bufnr number buffer number
--          ---@param rules table
--          ---@param commit_character table<string>
--          handler = function(char, item, bufnr, rules, commit_character)
--            -- Your handler function. Inpect with print(vim.inspect{char, item, bufnr, rules, commit_character})
--          end
--        }
--      },
--      -- Disable for tex
--      tex = false
--    }
--  })
--)

--local Rule = require('nvim-autopairs.rule')
--local npairs = require('nvim-autopairs')

---- you can use some built-in conditions

--local cond = require('nvim-autopairs.conds')
---- print(vim.inspect(cond))

--npairs.add_rules({
--  Rule("$", "$",{"tex", "latex"})
--    -- don't add a pair if the next character is %
--    :with_pair(cond.not_after_regex("%%"))
--    -- don't add a pair if  the previous character is xxx
--    :with_pair(cond.not_before_regex("xxx", 3))
--    -- don't move right when repeat character
--    :with_move(cond.none())
--    -- don't delete if the next character is xx
--    :with_del(cond.not_after_regex("xx"))
--    -- disable adding a newline when you press <cr>
--    :with_cr(cond.none())
--  },
--  -- disable for .vim files, but it work for another filetypes
--  Rule("a","a","-vim")
--)

--npairs.add_rules({
--  Rule("$$","$$","tex")
--    :with_pair(function(opts)
--        -- print(vim.inspect(opts))
--        if opts.line=="aa $$" then
--        -- don't add pair on that line
--          return false
--        end
--    end)
--   }
--)
