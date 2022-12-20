" Vim taskrc plugin
" Language : taskwarrior config files
" Maintainer : Nicolas BOSSARD
" URL: https://github.com/nbossard/vim-taskwarrior-conf
" License: MIT

if exists("b:current_syntax")
  finish
endif

syntax match taskRCPrimaryConfigKey /^[^=#\.]+/ nextgroup=keySeparator,keyValueSeparator
syntax match keySeparator /\./ nextgroup=tassRCSecondaryConfigKey
syntax match tassRCSecondaryConfigKey /\.[^=#\.]+/ nextgroup=keySeparator,keyValueSeparator
syntax match keyValueSeparator /=/ nextgroup=configValue
syntax match configValue /[^#]*$/ contained
syntax keyword taskrcPrimaryKeyword alias context urgency calendar report taskd news uda data weekstart

" for data...
syntax keyword taskrcSecondaryKeyword location
" For uda...
syntax keyword taskrcSecondaryKeyword type label
" For report...
syntax keyword taskrcSecondaryKeyword description columns sort filter
" for news...
syntax keyword taskrcSecondaryKeyword version
" for calendar..
syntax keyword taskrcSecondaryKeyword holidays
" for urgency...
syntax keyword taskrcSecondaryKeyword coefficient
" for context...
syntax keyword taskrcSecondaryKeyword read write
" for taskd...
syntax keyword taskrcSecondaryKeyword ca cert key server certificate credentials


syntax match comment /^\s*#.*$/

highlight link taskRCConfigKey Identifier
highlight link taskrcPrimaryKeyword Keyword
highlight link taskrcSecondaryKeyword Type
highlight link keyValueSeparator Delimiter
highlight link keySeparator Delimiter
highlight link configValue String
highlight link comment Comment

let b:current_syntax = "taskrc"

