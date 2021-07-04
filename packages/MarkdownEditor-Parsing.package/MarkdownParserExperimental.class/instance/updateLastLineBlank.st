phase 3
updateLastLineBlank
	
	"not finished"
	self blankLine & self state container lastChild notNil
	ifTrue: [self state container lastChild lastLineBlank: true]