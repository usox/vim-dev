runtime! syntax/php.vim
unlet b:current_syntax

syn case match

syn keyword pobjKeyword key class attribute list table verbatim contained cacheable postinit prewrite postwrite include postconstructor
syn keyword pobjType int string int2 float timestamp char text

syn region pobjAssign start=/^/ end=/$/ contains=pobjKeyword,pobjType
syn region Delimiter matchgroup=Todo start=/^verbatim$/ end=/<EOF>/ contains=@phpClTop,pobjKeyword

syn match pobjComment "^#.*"

hi link pobjComment Comment
hi link pobjKeyword Keyword
hi link pobjType Type

let b:current_syntax = "pobj"
