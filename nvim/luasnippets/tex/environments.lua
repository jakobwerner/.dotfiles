local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
-- local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    s("bg",
        fmta(
            [[
                \begin{<>}
                    <>
                \end{<>}
            ]],
            {
                i(1),
                i(2),
                rep(1)
            }
        )
    ),

    s("par",
        fmta(
            [[
                \begin{para}[<>] \label{par:<>}
                    <>
                \end{para}
            ]],
            {
                i(1),
                i(2),
                i(3)
            }
        )
    ),

    s("lem",
        fmta(
            [[
                \begin{lemma} \label{lem:<>}
                    <>
                \end{lemma}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),

    s("thm",
        fmta(
            [[
                \begin{theorem} \label{thm:<>}
                    <>
                \end{theorem}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),

    s("pf",
        fmta(
            [[
                \begin{proof}
                    <>
                \end{proof}
            ]],
            {
                i(1),
            }
        )
    ),

    s("prop",
        fmta(
            [[
                \begin{proposition} \label{prop:<>}
                    <>
                \end{proposition}
            ]],
            {
                i(1),
                i(2),
            }
        )
    ),

    s("eq",
        fmta(
            [[
                \begin{equation*}
                    <>
                \end{equation*}
            ]],
            {
                i(1),
            }
        )
    ),

    s("eq*",
        fmta(
            [[
                \begin{equation}
                    <>
                    \label{eq:<>}
                \end{equation}

            ]],
            {
                i(1),
                i(2),
            }
        )
    ),

    s("comp",
        fmta(
            [[
                \begin{equation*}
                    \begin{tikzcd}[column sep=small]
                        <> \arrow[r, "{<>}"] & <> \arrow[r, "{<>}"] & <>
                    \end{tikzcd}
                \end{equation*}
            ]],
            {
                i(1),
                i(2),
                i(3),
                i(4),
                i(5),
            }
        )
    ),

    s("ses",
        fmta(
            [[
                \begin{equation*}
                    \begin{tikzcd}[column sep=small]
                        0 \arrow[r] & <> \arrow[r, hookrightarrow, "{<>}"] & <> \arrow[r, twoheadrightarrow, "{<>}"] & <> \arrow[r] & 0
                    \end{tikzcd}
                \end{equation*}
            ]],
            {
                i(1),
                i(2),
                i(3),
                i(4),
                i(5),
            }
        )
    ),

    s("j",
        fmta(
            [[
                \(<>\)
            ]],
            {
                i(1),
            }
        )
    ),
}

