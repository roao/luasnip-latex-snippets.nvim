-- only in math mode, no autoexpand.
local M = {}

local ls = require("luasnip")
local utils = require("luasnip-latex-snippets.util.utils")
local pipe = utils.pipe

function M.retrieve(not_math)
  local parse_snippet = ls.extend_decorator.apply(ls.parser.parse_snippet, {
    wordTrig = false,
    condition = pipe({ not_math }),
    show_condition = not_math,
  }) --[[@as function]]
  local decorator = {
    wordTrig = false,
    condition = pipe({ not_math }),
  }
  local s = ls.extend_decorator.apply(ls.snippet, decorator) --[[@as function]]

  return {
    parse_snippet(
      { trig = "bf", name = "textbf" },
      "\\textbf{$1}$0"
    ),
    parse_snippet(
      { trig = "it", name = "textit" },
      "\\textit{$1}$0"
    ),
    parse_snippet(
      { trig = "col", name = "textcolor" },
      "\\textcolor{$1}{$2}$0"
    ),
    parse_snippet({ trig = "eq:", name = "math" }, "Eq.\\ref{$1}$0"),
    parse_snippet({ trig = "eqs:", name = "maths" }, "Eqs.\\ref{$1}$0"),
    parse_snippet({ trig = "ref", name = "reference" }, "\\ref{$1}$0"),
    -- parse_snippet(
    --   { trig = "sequence", name = "Sequence indexed by n, from m to infinity" },
    --   "(${1:a}_${2:n})_{${2:n}=${3:m}}^{${4:\\infty}}"
    -- ),
  }
end

return M
