phase 3
processRemainderOfLine

	self lazyContinuation
	ifFalse: [self closeUnmatchedBlocks.
		self updateLastLineBlank.
		self state container acceptsLines
			ifTrue: [self addLine]
			ifFalse: [self addParagraph]]