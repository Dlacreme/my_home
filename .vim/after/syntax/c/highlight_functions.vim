syn match cCustomParen	"(" contains=cParen contains=cCppParen
syn match cCustomFunc	"\w\+\s*(" contains=cCustomParen

hi def link cCustomFunc	Function

hi Function 	guifg=#7e8aa2 gui=none ctermfg=110
