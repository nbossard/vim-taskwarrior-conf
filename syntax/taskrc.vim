" Vim taskrc plugin
" Language : taskwarrior config files
" Maintainer : Nicolas BOSSARD
" URL: https://github.com/nbossard/vim-taskwarrior-conf
" License: MIT

if exists("b:current_syntax")
  finish
endif

syntax match taskRCConfigKey /^[^=#\.]+/ nextgroup=keySeparator,keyValueSeparator
syntax match keySeparator /\./ nextgroup=tassRCConfigKey
syntax match keyValueSeparator /=/ nextgroup=configValue
syntax match configValue /[^#]*$/ contained

syntax match comment /^\s*#.*$/

highlight link taskRCConfigKey Identifier
highlight link keyValueSeparator Delimiter
highlight link keySeparator Delimiter
highlight link configValue String
highlight link comment Comment

let b:current_syntax = "taskrc"

