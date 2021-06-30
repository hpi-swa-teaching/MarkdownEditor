phase 3
updateLastLineBlank
	
	"not finished"
	self state currentLine isAllSeparators & self state container children notEmpty
	ifTrue: [self state container children last lastLineBlank: true]