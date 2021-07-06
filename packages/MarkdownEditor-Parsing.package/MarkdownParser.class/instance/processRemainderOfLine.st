phase 3
processRemainderOfLine
	
	self lazyContinuation
	ifFalse: [self closeUnmatchedBlocks.
			"self updateLastLineBlank."
			self state currentLine isAllSeparators 
				ifTrue: [self state reduceCurrentLineTo: ''.
						  ^ self].
			self state container acceptsLines
				ifTrue: [self addLine]
				ifFalse: [self addParagraph]]