if exists('b:current_syntax')
  finish
endif

let b:current_syntax = 'ein'

syn keyword einBoolean True False
syn keyword einNone None
syn keyword einLet in let
syn keyword einConditional case else if then
syn keyword einExport export
syn keyword einImport import
syn keyword einTypeDefinition type

syn match einComment "#.*"
syn match einDelimiter "[,()[\]{}]"
syn match einConditionalArrow "=>"
syn match einNumber "-\?\(\<\d\+\(\.\d\+\)\?\>\)"
syn match einOperator "\(|\|&&\|||\|->\|==\|/=\|<=\|>=\|<\|>\|+\|-\|*\|/\)"
syn match einType "\<[A-Z][0-9A-Za-z]*"

syn region einString start="\"" skip="\\\"" end="\""

hi def link einBoolean Boolean
hi def link einComment Comment
hi def link einLet Keyword
hi def link einConditional Conditional
hi def link einDelimiter Delimiter
hi def link einExport PreProc
hi def link einImport Include
hi def link einConditionalArrow Label
hi def link einNone Constant
hi def link einNumber Number
hi def link einOperator Operator
hi def link einString String
hi def link einType Type
hi def link einTypeDefinition TypeDef
