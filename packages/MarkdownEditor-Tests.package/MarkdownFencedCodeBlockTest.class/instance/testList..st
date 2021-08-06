testLoop
testList: anOrderedCollection
	
	anOrderedCollection do: [:testTupel || state codeBlock |
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			yourself. 
		codeBlock := MarkdownFencedCodeBlock createNew: state.
		testTupel size = 1 
			ifTrue: [self assert: 0 equals: codeBlock]
			ifFalse: [self assert: 2 equals: codeBlock.
				self assert: testTupel second equals: state newBlock innerLine.
				self assert: testTupel third equals: state newBlock indentation.
				self assert: testTupel fourth equals: state newBlock openingFence]]