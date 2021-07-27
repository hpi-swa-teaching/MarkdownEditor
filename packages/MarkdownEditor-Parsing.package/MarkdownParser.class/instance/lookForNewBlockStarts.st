phase 2
lookForNewBlockStarts

	self state oldTip canContainFurtherBlocks
		ifFalse: [^ self processRemainderOfLine].
	self blockChecklist do: [:class || result | 
		result := class createNew: self state.
		result = 1 "matched container block - try again for the rest of the line"
		ifTrue: [self incorporateNewBlock.
			^ self lookForNewBlockStarts].
		
		result = 2 "matched leaf block - we are done"
		ifTrue: [self incorporateNewBlock.
			^ self processRemainderOfLine]].
	^ self processRemainderOfLine