parsing
createNewBlocks: aString
	
	aString ifNil: [^ nil].
	self blockChecklist do: [ :class || newBlock |
		(newBlock := class newFrom: aString) ifNotNil: [
			self firstUnmatchedBlock ifNotNil: [self firstUnmatchedBlock close.].
			self lastMatchedBlock children add: newBlock.
			(newBlock isKindOf: MarkdownList2)
				ifTrue: [self lastMatchedBlock: newBlock children last]
				ifFalse: [self lastMatchedBlock: newBlock].
			(newBlock isKindOf: MarkdownLeafBlock) ifTrue: [^ nil].
			^ self createNewBlocks: newBlock innerLine]].
	^ aString