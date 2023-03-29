local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
-- local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep

return {
    s("sec",
        fmta(
            [[
                \section{<>} \label{sec:<>}
                
                
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),

    s("sec*",
        fmta(
            [[
                \section{<>}
                
                
            ]],
            {
                i(1),
            }
        )
    ),

    s("chap",
        fmta(
            [[
                \chapter{<>} \label{chap:<>}
                
                
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),

    s("chap*",
        fmta(
            [[
                \chapter{<>}
                
                
            ]],
            {
                i(1),
            }
        )
    ),

}
