syn match btreeTask "^.*$" contains=btreeTaskName,btreeComment,btreeTaskAttribute
syn match btreeTaskName "^\s*[^ ]\+" contained contains=btreeRoot,btreeBranch,btreeBoolean,
syn match btreeTaskAttribute /\<[^ ]\+/ contained contains=btreeTaskAttributeName,btreeTaskAttributeValue
syn match btreeTaskAttributeName /\([^: ]*\):\@=/ contained
syn match btreeTaskAttributeValue /:\@<=[^ :]*\>/ contained

syn region btreeImport start=/^\s*import/ end=/$/ contains=btreeImportKeyWord,btreeImportAlias,btreeImportPackage
syn match btreeImportKeyWord "^\s*import" contained
syn match btreeImportAlias "[^ :]\+:" contained
syn region btreeImportPackage start=/\v"/ end=/\v"/ contained

syn match btreeComment	"#.*$" display contains=@Spell

syn keyword btreeRoot root
syn keyword btreeBranch sequence parallel selector semaphoreGuard limit
syn keyword btreeBoolean alwaysFail alwaysSucceed untilFail untilSuccess invert

hi! link btreeImportKeyWord PreProc
hi! link btreeImportAlias Identifier
hi! link btreeImportPackage Type
hi! link btreeComment Comment
hi! link btreeRoot Constant
hi! link btreeBranch Conditional
hi! link btreeBoolean Boolean
hi! link btreeTaskName Function
hi! link btreeTaskAttributeName Identifier
hi! link btreeTaskAttributeValue String
