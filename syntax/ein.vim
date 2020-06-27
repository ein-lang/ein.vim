if exists('b:current_syntax')
  finish
endif

let b:current_syntax = 'ein'

syn keyword einConditional case else if then
syn keyword einTypeDefinition type
syn keyword einImport import
syn keyword einExport export

syn match einOperator "\(|\|&&\|||\|->\|==\|/=\|<=\|>=\|<\|>\|+\|-\|*\|/\)"

syn match einType "\<[A-Z][0-9A-Za-z]*"

syn match einDelimiter "[,()[\]{}]"

syn match einComment "#.*"

syn region einString start="\"" skip="\\\"" end="\""

syn match einNumber "-\?\(\<\d\+\(\.\d\+\)\?\>\)"

hi def link einComment Comment
hi def link einConditional Conditional
hi def link einDelimiter Delimiter
hi def link einImport Include
hi def link einNumber Float
hi def link einOperator Operator
hi def link einString String
hi def link einType Type
hi def link einTypeDefinition TypeDef
