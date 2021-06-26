phase 3
processRemainderOfLine

	self lazyContinuation
	ifFalse: [self closeUnmatchedBlocks.
		self state container acceptsLines
			ifTrue: [self addLine]
			ifFalse: [self addParagraph]]