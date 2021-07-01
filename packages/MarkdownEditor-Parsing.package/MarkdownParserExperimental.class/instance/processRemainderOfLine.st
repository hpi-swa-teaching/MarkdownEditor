phase 3
processRemainderOfLine
	self halt.
	self lazyContinuation
	ifFalse: [self closeUnmatchedBlocks.
		"self updateLastLineBlank."
		self state currentLine isAllSeparators ifTrue: [^ self].
		self state container acceptsLines
			ifTrue: [self addLine]
			ifFalse: [self addParagraph]]