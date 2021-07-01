phase 2
lookForNewBlockStarts

	self blockChecklist do: [:class || result | 
		result := class createNew: self state.
		
		result = 1 "matched container block - try again for the rest of the line"
		ifTrue: [self closeUnmatchedBlocks.
			self state newBlock adaptToDocumentWith: self state.
			self state container: self state tip.
			^self lookForNewBlockStarts].
		
		result = 2 "matched leaf block - we are done"
		ifTrue: [self closeUnmatchedBlocks.
			self state newBlock adaptToDocumentWith: self state.
			self state container: self state tip.
			^self processRemainderOfLine]].
	
	^self processRemainderOfLine
	