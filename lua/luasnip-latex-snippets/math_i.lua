-- only in math mode, no autoexpand.
local M = {}

local ls = require("luasnip")
local utils = require("luasnip-latex-snippets.util.utils")
local pipe = utils.pipe

function M.retrieve(is_math)
  local parse_snippet = ls.extend_decorator.apply(ls.parser.parse_snippet, {
    wordTrig = false,
    condition = pipe({ is_math }),
    show_condition = is_math,
  }) --[[@as function]]
  local decorator = {
    wordTrig = false,
    condition = pipe({ is_math }),
  }
  local s = ls.extend_decorator.apply(ls.snippet, decorator) --[[@as function]]

  return {
    -- parse_snippet({ trig = "sum", name = "sum" }, "\\sum_{n=${1:1}}^{${2:\\infty}} ${3:a_n z^n}"),
    parse_snippet({ trig = "isum", name = "sum infty" }, "\\sum_{${1:i}=-\\infty}^{\\infty} $0"),

    -- parse_snippet(
    --   { trig = "taylor", name = "taylor" },
    --   "\\sum_{${1:k}=${2:0}}^{${3:\\infty}} ${4:c_$1} (x-a)^$1 $0"
    -- ),

    -- parse_snippet({ trig = "lim", name = "limit" }, "\\lim_{${1:n} \\to ${2:\\infty}} "),
    -- parse_snippet({ trig = "limsup", name = "limsup" }, "\\limsup_{${1:n} \\to ${2:\\infty}} "),
    
    parse_snippet(
      { trig = "bf", name = "mathbf" },
      "\\mathbf{$1}$0"
    ),
    parse_snippet(
      { trig = "bs", name = "boldsymbol" },
      "\\boldsymbol{$1}$0"
    ),
    parse_snippet(
      { trig = "cal", name = "mathcal" },
      "\\mathcal{$1}$0"
    ),
    parse_snippet(
      { trig = "ti", name = "tilde" },
      "\\tilde{$1}$0"
    ),
    parse_snippet(
      { trig = "bm", name = "bm" },
      "\\bm{$1}$0"
    ),
    parse_snippet(
      { trig = "col", name = "color" },
      "\\color{$1}{$2}$0"
    ),
    parse_snippet(
      { trig = "ppx", name = "p/px" },
      "\\frac{\\partial $1}{\\partial ${2:x}} $0"
    ),
    parse_snippet(
      { trig = "pp2x", name = "p2/px2" },
      "\\frac{\\partial^2 $1}{\\partial ${2:x}^2} $0"
    ),
    parse_snippet(
      { trig = "ddx", name = "d/dx" },
      "\\frac{\\mathrm{d}$1}{\\mathrm{d}${2:x}} $0"
    ),
    parse_snippet(
      { trig = "dd2x", name = "d2/dx2" },
      "\\frac{\\mathrm{d}$1}{\\mathrm{d}${2:x}}^2 $0"
    ),
    parse_snippet(
      { trig = "lr", name = "left( right)" },
      "\\left( ${1:${TM_SELECTED_TEXT}} \\right) $0"
    ),
    parse_snippet(
      { trig = ".r", name = "left. right)" },
      "\\left. ${1:${TM_SELECTED_TEXT}} \\right) $0"
    ),
    parse_snippet(
      { trig = "l.", name = "left( right." },
      "\\left( ${1:${TM_SELECTED_TEXT}} \\right. $0"
    ),
    parse_snippet(
      { trig = "lr(", name = "left( right)" },
      "\\left( ${1:${TM_SELECTED_TEXT}} \\right) $0"
    ),
    parse_snippet(
      { trig = "lr|", name = "left| right|" },
      "\\left| ${1:${TM_SELECTED_TEXT}} \\right| $0"
    ),
    parse_snippet(
      { trig = "lr{", name = "left{ right}" },
      "\\left\\{ ${1:${TM_SELECTED_TEXT}} \\right\\\\} $0"
    ),
    parse_snippet(
      { trig = "lr[", name = "left[ right]" },
      "\\left[ ${1:${TM_SELECTED_TEXT}} \\right] $0"
    ),
    parse_snippet(
      { trig = "lr|", name = "left| right|" },
      "\\left| ${1:${TM_SELECTED_TEXT}} \\right| $0"
    ),
    parse_snippet(
      { trig = "lra", name = "leftangle rightangle" },
      "\\left\\langle ${1:${TM_SELECTED_TEXT}} \\right\\rangle$0"
    ),
    parse_snippet(
      { trig = "pa", name = "partial" },
      "\\partial "
    ),
    parse_snippet(
      { trig = "al", name = "alpha" },
      "\\alpha "
    ),
    parse_snippet(
      { trig = "be", name = "beta" },
      "\\beta "
    ),
    parse_snippet(
      { trig = "de", name = "delta" },
      "\\delta "
    ),
    parse_snippet(
      { trig = "DE", name = "Delta" },
      "\\Delta "
    ),
    parse_snippet(
      { trig = "ep", name = "epsilon" },
      "\\epsilon "
    ),
    parse_snippet(
      { trig = "vep", name = "varepsilon" },
      "\\varepsilon "
    ),
    parse_snippet(
      { trig = "ga", name = "gamma" },
      "\\gamma "
    ),
    parse_snippet(
      { trig = "GA", name = "Gamma" },
      "\\Gamma "
    ),
    parse_snippet(
      { trig = "ph", name = "phi" },
      "\\phi "
    ),
    parse_snippet(
      { trig = "PH", name = "Phi" },
      "\\Phi "
    ),
    parse_snippet(
      { trig = "vph", name = "varphi" },
      "\\varphi "
    ),
    parse_snippet(
      { trig = "ka", name = "kappa" },
      "\\kappa "
    ),
    parse_snippet(
      { trig = "la", name = "lambda" },
      "\\lambda "
    ),
    parse_snippet(
      { trig = "LA", name = "Lambda" },
      "\\Lambda "
    ),
    parse_snippet(
      { trig = "rh", name = "rho" },
      "\\rho "
    ),
    parse_snippet(
      { trig = "ta", name = "tau" },
      "\\tau "
    ),
    parse_snippet(
      { trig = "si", name = "sigma" },
      "\\sigma "
    ),
    parse_snippet(
      { trig = "Si", name = "Sigma" },
      "\\Sigma "
    ),
    parse_snippet(
      { trig = "om", name = "omega" },
      "\\omega "
    ),
    parse_snippet(
      { trig = "Om", name = "Omega" },
      "\\Omega "
    ),
    parse_snippet(
      { trig = "ps", name = "psi" },
      "\\psi "
    ),
    parse_snippet(
      { trig = "PS", name = "Psi" },
      "\\Psi "
    ),
    parse_snippet(
      { trig = "ze", name = "zeta" },
      "\\zeta "
    ),
    parse_snippet(
      { trig = "th", name = "theta" },
      "\\theta "
    ),
    parse_snippet(
      { trig = "TH", name = "Theta" },
      "\\Theta "
    ),
    parse_snippet(
      { trig = "et", name = "eta" },
      "\\eta "
    ),
    parse_snippet(
      { trig = "na", name = "nabla" },
      "\\nabla "
    ),
    -- parse_snippet(
    --   { trig = "sequence", name = "Sequence indexed by n, from m to infinity" },
    --   "(${1:a}_${2:n})_{${2:n}=${3:m}}^{${4:\\infty}}"
    -- ),
  }
end

return M
