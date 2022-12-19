" Vim taskrc plugin
" Language : taskwarrior config files
" Maintainer : Nicolas BOSSARD
" URL: https://github.com/nbossard/vim-taskwarrior-conf
" License: MIT

if exists("b:current_syntax")
  finish
endif

syntax match taskRCConfigKey /^[^=#]+/ nextgroup=separator
syntax match separator /=/ nextgroup=configValue
syntax match configValue /[^#]*$/ contained

syntax match comment /^\s*#.*$/

highlight link taskRCConfigKey Identifier
highlight link separator Delimiter
highlight link configValue String
highlight link comment Comment

let b:current_syntax = "taskrc"

