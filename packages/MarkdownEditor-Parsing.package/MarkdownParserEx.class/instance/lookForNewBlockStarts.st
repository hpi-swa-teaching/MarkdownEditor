parsing
lookForNewBlockStarts

	self blockChecklist do: [:class || result | 
		result := class createNew: self state.
		
		result = 1 "matched container block"
		ifTrue: [self closeUnmatchedBlocks.
			self state container: self state tip].
		
		result = 2 "matched leaf block"
		ifTrue: [
			self closeUnmatchedBlocks.
			self state container: self state tip.
			^self].
		
		^self lookForNewBlockStarts]