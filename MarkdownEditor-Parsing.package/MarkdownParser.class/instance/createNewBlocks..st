parsing
createNewBlocks: aString

	aString ifNil: [^ nil].
	self blockChecklist do: [ :class || newBlock |
		(newBlock := class newFrom: aString) ifNotNil: [
			self lastMatchedBlock children add: newBlock.
			self lastMatchedBlock: newBlock.
			(newBlock isKindOf: MarkdownLeafBlock) ifTrue: [^ nil].
			self createNewBlocks: newBlock innerLine]].
	^ aString