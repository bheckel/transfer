" SAS Log-specific hacks
" Modified: Mon 13 Jun 2016 11:32:32 (Bob Heckel)
"
" TODO how to capture second NOTE: lines up to the ending period?  These keep
" going into SYMBOLGEN etc if there's no line break
"""syn region sasNoteLine   start="^\s*NOTE:" end="^$"
"""syn region sasSymbolg    start="^\s*SYMBOLGEN:.*" end="^$"

syn match sasBang       "^!!!.*"
syn match sasNoteLine   "^\s*NOTE:.*"
syn match sasWarnLine   "^\s*WARNING:.*"
syn match sasErrLine    "^ERROR:\?.*"
syn match sasSymbolg    "^\s*SYMBOLGEN:.*"
syn match sasMlogic     "^\s*MLOGIC(.*"
syn match sasMlogic2    "^\s*MLOGIC(\w\+):\s\+\w\+ing execution."
syn match sasMprint     "^\s*MPRINT(.*"

hi sasBang      ctermfg=Yellow guifg=Yellow cterm=bold gui=bold
hi sasErrLine   ctermfg=Yellow ctermbg=Red guifg=Yellow guibg=Red cterm=bold gui=bold
hi sasErrMsg    term=bold ctermbg=Red ctermfg=Yellow
hi sasMlogic2   ctermfg=Red guifg=Red cterm=bold gui=bold
hi sasMlogic    ctermfg=Magenta guifg=Magenta cterm=bold gui=bold
hi sasMprint    ctermfg=White gui=bold guifg=White cterm=bold gui=bold
hi sasNoteLine  ctermfg=Green guifg=Green cterm=bold gui=bold
hi sasSteps     term=bold ctermfg=Yellow gui=bold guifg=Yellow
hi sasSymbolg   ctermfg=Cyan guifg=Cyan cterm=bold gui=bold
hi sasWarnLine  ctermfg=Red ctermbg=Yellow guifg=Red guibg=Yellow cterm=bold gui=bold
hi sasWarnMsg   term=bold ctermbg=Red ctermfg=White
