" Modified: Wed 09 Jul 2008 09:37:37 (Bob Heckel)
" SAS Log specific hacks
"
" TODO this may not be true, think it's all aucommand driven now 2008-07-09 
" Assumes we've done the following one-time setup:
" cd ~/.vim/syntax
" ln -s ~/code/sas/sas.vim saslog.vim
" cd ~/.vim/after/syntax
" ln -s ~/code/sas/saslog.vim .

" Avoid having the NOTE: lines use inappropriate SAS syntax colors.

" TODO how to capture second NOTE: lines up to the ending period?  These keep
" going into SYMBOLGEN etc if there's no line break
"""syn region sasNoteLine   start="^\s*NOTE:" end="^$"
"""syn region sasSymbolg    start="^\s*SYMBOLGEN:.*" end="^$"

syn match sasBang          "^!!!.*"
syn match sasNoteLine      "^\s*NOTE:.*"
syn match sasWarnLine      "^\s*WARNING:.*"
syn match sasErrLine       "^\s*ERROR:.*"
syn match sasSymbolg       "^\s*SYMBOLGEN:.*"
syn match sasMlogic        "^\s*MLOGIC(.*"
syn match sasMlogic2       "^\s*MLOGIC(\w\+):\s\+\w\+ing execution."
syn match sasMprint        "^\s*MPRINT(.*"

hi sasWarnMsg   term=bold ctermbg=Red ctermfg=White
hi sasErrMsg    term=bold ctermbg=Red ctermfg=Yellow
hi sasSteps     term=bold ctermfg=Yellow gui=bold guifg=Yellow
hi sasSymbolg   ctermfg=Cyan guifg=Cyan cterm=bold gui=bold
hi sasMlogic    ctermfg=Magenta guifg=Magenta cterm=bold gui=bold
hi sasMlogic2   ctermfg=Red guifg=Red cterm=bold gui=bold
hi sasMprint    ctermfg=White gui=bold guifg=White cterm=bold gui=bold
hi sasNoteLine  ctermfg=Green guifg=Green cterm=bold gui=bold
hi sasWarnLine  ctermfg=Red ctermbg=Yellow guifg=Red guibg=Yellow cterm=bold gui=bold
hi sasErrLine   ctermfg=Yellow ctermbg=Red guifg=Yellow guibg=Red cterm=bold gui=bold
hi sasBang      ctermfg=Yellow guifg=Yellow cterm=bold gui=bold
