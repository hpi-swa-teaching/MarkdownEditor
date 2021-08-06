phase 2
lookForNewBlockStarts

	self state oldTip canContainFurtherBlocks
		ifFalse: [^ self processRemainderOfLine].
	self blockChecklist do: [:class || result | 
		result := class createNew: self state.
		result = #matchedContainer
			ifTrue: [self incorporateNewBlock.
				^ self lookForNewBlockStarts].
		
		result = #matchedLeaf
			ifTrue: [self incorporateNewBlock.
				^ self processRemainderOfLine]].
	^ self processRemainderOfLine