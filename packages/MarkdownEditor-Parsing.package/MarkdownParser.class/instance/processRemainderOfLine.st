phase 3
processRemainderOfLine

	self lazyContinuation
		ifFalse: [self closeUnmatchedBlocks.
				(self blankLine and: [self state container notAcceptsBlankLine])
					ifTrue: [self state reduceCurrentLineTo: ''.
							^ self].
				self state container acceptsLines
					ifTrue: [self addLine]
					ifFalse: [self addParagraph]]