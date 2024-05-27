local M = {}

local ls = require("luasnip")
local utils = require("luasnip-latex-snippets.util.utils")
local pipe, no_backslash = utils.pipe, utils.no_backslash

function M.retrieve(is_math)
  local parse_snippet = ls.extend_decorator.apply(ls.parser.parse_snippet, {
    wordTrig = false,
    condition = pipe({ is_math, no_backslash }),
  }) --[[@as function]]
  local decorator = {
    wordTrig = false,
    condition = pipe({ is_math, no_backslash }),
  }
  local s = ls.extend_decorator.apply(ls.snippet, decorator) --[[@as function]]

  return {
    parse_snippet(
      { trig = "partial", name = "partial" },
      "\\partial "
    ),
    parse_snippet(
      { trig = "alpha", name = "alpha" },
      "\\alpha "
    ),
    parse_snippet(
      { trig = "beta", name = "beta" },
      "\\beta "
    ),
    parse_snippet(
      { trig = "delta", name = "delta" },
      "\\delta "
    ),
    parse_snippet(
      { trig = "Delta", name = "Delta" },
      "\\Delta "
    ),
    parse_snippet(
      { trig = "epsilon", name = "epsilon" },
      "\\epsilon "
    ),
    parse_snippet(
      { trig = "varepsilon", name = "varepsilon" },
      "\\varepsilon "
    ),
    parse_snippet(
      { trig = "gamma", name = "gamma" },
      "\\gamma "
    ),
    parse_snippet(
      { trig = "Gamma", name = "Gamma" },
      "\\Gamma "
    ),
    parse_snippet(
      { trig = "phi", name = "phi" },
      "\\phi "
    ),
    parse_snippet(
      { trig = "Phi", name = "Phi" },
      "\\Phi "
    ),
    parse_snippet(
      { trig = "varphi", name = "varphi" },
      "\\varphi "
    ),
    parse_snippet(
      { trig = "kappa", name = "kappa" },
      "\\kappa "
    ),
    parse_snippet(
      { trig = "lambda", name = "lambda" },
      "\\lambda "
    ),
    parse_snippet(
      { trig = "Lambda", name = "lambda" },
      "\\Lambda "
    ),
    parse_snippet(
      { trig = "rho", name = "rho" },
      "\\rho "
    ),
    parse_snippet(
      { trig = "tau", name = "tau" },
      "\\tau "
    ),
    parse_snippet(
      { trig = "sigma", name = "sigma" },
      "\\sigma "
    ),
    parse_snippet(
      { trig = "Sigma", name = "Sigma" },
      "\\Sigma "
    ),
    parse_snippet(
      { trig = "omega", name = "omega" },
      "\\omega "
    ),
    parse_snippet(
      { trig = "Omega", name = "Omega" },
      "\\Omega "
    ),
    parse_snippet(
      { trig = "psi", name = "psi" },
      "\\psi "
    ),
    parse_snippet(
      { trig = "Psi", name = "Psi" },
      "\\Psi "
    ),
    parse_snippet(
      { trig = "zeta", name = "zeta" },
      "\\zeta "
    ),
    parse_snippet(
      { trig = "theta", name = "theta" },
      "\\theta "
    ),
    parse_snippet(
      { trig = "Theta", name = "Theta" },
      "\\Theta "
    ),
    parse_snippet(
      { trig = "eta", name = "eta" },
      "\\eta "
    ),
    parse_snippet(
      { trig = "nabla", name = "nabla" },
      "\\nabla "
    ),
    parse_snippet(
      { trig = "mu", name = "mu" },
      "\\mu "
    ),
    parse_snippet(
      { trig = "nu", name = "nu" },
      "\\nu "
    ),
    parse_snippet(
      { trig = "pi", name = "pi" },
      "\\pi "
    ),
    parse_snippet(
      { trig = "xi", name = "xi" },
      "\\xi "
    ),
    parse_snippet(
      { trig = "Xi", name = "Xi" },
      "\\Xi "
    ),
    parse_snippet(
      { trig = "chi", name = "chi" },
      "\\chi "
    ),
  }
end

return M
